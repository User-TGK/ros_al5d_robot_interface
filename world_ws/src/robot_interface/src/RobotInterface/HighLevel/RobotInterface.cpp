#include "RobotInterface.hpp"

#include <sstream>
#include <fstream>
#include <algorithm>
#include <boost/algorithm/string.hpp>
#include <ros/console.h>
#include <exception>
#include <iostream>

namespace RobotInterface
{
namespace HighLevel
{

PositionAction::PositionAction(const std::string& name, const std::string& configPath, const std::string& port, const std::vector<Servo>& aServos)
    : as_(name, false), action_name_(name), servos(aServos)
{
    as_.registerPreemptCallback(boost::bind(&PositionAction::preemptCB, this));
    as_.registerGoalCallback(boost::bind(&PositionAction::goalCB, this));

    ROS_INFO("Entered state: %s.", stateToStr(state).c_str());

    if (!parsePreProgrammedPositions(configPath))
    {
        ROS_DEBUG("Guard triggered: PREPROGRAMMED CONFIGURATION FILE WAS INVALID (configurationIsInValid()).");
        throw(std::invalid_argument("FAILED PARSING THE PREPROGRAMMED POSITIONS FILE."));
    }

    communicator = std::make_shared<RobotInterface::LowLevel::SerialCommunication>(port);
    as_.start();

    ROS_DEBUG("Guard triggered: PREPROGRAMMED CONFIGURATION FILE WAS VALID (configurationIsValid()).");
    state = States::INIT;
    initialize();
}

PositionAction::~PositionAction(void)
{
}

void PositionAction::initialize()
{
    ROS_INFO("Entered state: %s.", stateToStr(state).c_str());

    Command command;
    try 
    {
        command.setPosition(getPreProgrammedPosition("PARK"));
        command.convertToPWM(servos);

        communicator->sendCommand(
                communicator->positionSpeedCommandToStr
                (
                    command.getPosition().indexAndPosition, 
                    1500 //(50% of the maximum speed; between 500-2500)
                )
        );
        ROS_DEBUG("Guard triggered: INTERFACE INITIALIZATION (isInitialized()).");
        state = States::WAITING;
        ROS_INFO("Entered state: %s.", stateToStr(state).c_str());
    }
    catch (const std::string& warning)
    {
        ROS_WARN("%s", warning.c_str());
    }
}

bool PositionAction::executeEmergencyStop(robot_interface::EmergencyStop::Request &req, 
robot_interface::EmergencyStop::Response &res)
{
    ROS_DEBUG("Event occured: EMERGENCY STOP REQUEST.");

    state = States::STOP;
    ROS_INFO("Entered state: %s.", stateToStr(state).c_str());
    
    Command emergencyCommand;
    emergencyCommand.setEmergencyStop(true);
    std::map<unsigned long, short> indexAndPosition;
    for (std::size_t i = 0; i < NROFDOFS; ++i)
    {
        indexAndPosition[i] = 0;
    }
    emergencyCommand.setIndexAndPosition(indexAndPosition);
    std::string cmdStr = communicator->emergencyStopCommandToStr(emergencyCommand.getPosition().indexAndPosition);
    
    if (communicator->sendCommand(cmdStr))
    {
        preemptAllQueuedCommands();

        ros::Duration(1.5).sleep();
        return true;
    }
}

void PositionAction::goalCB()
{
    const robot_interface::PositionGoalConstPtr goal = as_.acceptNewGoal();
    Command command;
    
    bool success = goalToCommand(command, goal);
    bool validated = command.validateCommand(servos);

    if (validated && success)
    {
        commands.push(command);
    }
    else
    {
        ROS_DEBUG("Guard triggered: INVALID COMMAND.");
        result_.successFull = false;
        as_.setAborted();
                    
        
        state = States::WAITING;
        ROS_INFO("Entered state: %s.", stateToStr(state).c_str());    
    }
}

void PositionAction::queuedCommandsHandler()
{
    while (true)
    {
        if (!commands.empty())
        {
            Command command = commands.front();

            unsigned long expectedEndTime = command.verifyEndTime();
            command.convertToPWM(servos);

            state = States::WRITING;
            ROS_INFO("Entered state: %s.", stateToStr(state).c_str());

            if(communicator->sendCommand(
                communicator->positionTimeCommandToStr(
                    command.getPosition().indexAndPosition, 
                    command.getMaxTime()
                    )
            ))
            {
                if (as_.isActive() && ros::ok())
                {
                    ROS_DEBUG("Guard triggered: SERIAL PORT OPEN (serialportIsOpen()).");
                    state = States::MOVING;
                    ROS_INFO("Entered state: %s.", stateToStr(state).c_str());
                }

                ros::Duration(expectedEndTime/1000).sleep();

                if (as_.isActive() && ros::ok())
                {
                    ROS_DEBUG("Guard triggered: DONE MOVING TO POSITION (doneMoving()).");
                    result_.executionTime = (expectedEndTime * 1);
                    result_.successFull = true;
                    as_.setSucceeded(result_);

                    commands.pop();

                    state = States::WAITING;
                    ROS_INFO("Entered state: %s.", stateToStr(state).c_str());
                }
            }
            else
            {
                commands.pop();
                ROS_DEBUG("Guard triggered: SERIAL PORT WASN'T AVAILABLE (!serialPortOpen()).");
                state = States::WAITING;
                ROS_INFO("Entered state: %s.", stateToStr(state).c_str());
            }
        }
        else if (!rejectedGoals.empty())
        {
            ROS_DEBUG("Guard triggered: INVALID COMMAND.");
        
            state = States::WAITING;
            ROS_INFO("Entered state: %s.", stateToStr(state).c_str());

            result_.successFull = false;
            as_.setAborted();
        }
    }
}

void PositionAction::preemptCB()
{
    ROS_WARN("REQUESTED A PREEMPT MUST BE DONE BY USING THE EMERGENCY STOP -SERVICE!");
}

Position& PositionAction::getPreProgrammedPosition(const std::string& name)
{
    for (auto& p : preProgrammedPositions)
    {
        if (p.name == name)
        {
            return p;
        }
    }
    throw std::string("REQUESTED PREPROGRAMMED POSITION DOESN'T EXIST.");
}

void PositionAction::preemptAllQueuedCommands()
{
    while (!commands.empty())
    {
        commands.pop();
    }
    if (as_.isActive())
    {
        as_.setPreempted();
    }
}

bool PositionAction::goalToCommand(Command &command, const robot_interface::PositionGoalConstPtr& goal)
{
    if (goal->preProgrammed)
    {
        if (!command.tryPreSetPosition(goal->name, goal->maxTime, preProgrammedPositions))
        {
            return false;
        }
    }
    else if (!goal->preProgrammed)
    {
        std::map<unsigned long, short> indexAndPosition;
        for (std::size_t i = 0; i < goal->position.size(); i++)
        {
            indexAndPosition.insert(std::pair<unsigned short, short>(goal->id[i], goal->position[i]));
        }
        if (!command.tryCustomPosition(indexAndPosition, goal->maxTime))
        {
            return false;
        }
    }
    return true;
}

bool PositionAction::parsePreProgrammedPositions(const std::string &path)
{
    std::string command;
    std::ifstream configFile(path);

    if (configFile.is_open())
    {
        while (getline(configFile, command))
        {
            if (command.find('#'))
            {
                std::vector<std::string> tokens;
                boost::split(tokens, command, [](char c) { return c == ' '; });

                if (tokens.size() != 11)
                {
                    return false;
                }
                short m = 1;
                std::map<unsigned long, short> mapping;

                for (short i = m; i < ((NROFDOFS * 2) + m); i += 2)
                {
                    mapping[std::stoi(tokens.at(i))] = std::stoi(tokens.at(i + m));
                }

                Position preProgrammedPosition(tokens.at(0), mapping);
                this->preProgrammedPositions.push_back(preProgrammedPosition);
            }
        }
        configFile.close();
        return true;
    }
    else
    {
        return false;
    }
}

}
}