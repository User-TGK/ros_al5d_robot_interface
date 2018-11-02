#include "MotionPlanner.hpp"
#include "robot_interface/EmergencyStop.h"

#include <cstdlib>
#include <stdexcept>
#include <ros/console.h>

namespace MotionPlanner
{

RobotInterface::RobotInterface() : ac("RobotInterface", true)
{
}

RobotInterface::~RobotInterface()
{
}

void RobotInterface::runDemo()
{
    //States the demonstration can be in
    const unsigned short park = 0;
    const unsigned short straight = 1;
    const unsigned short custom = 2;
    const unsigned short emergencyBreak = 3;

    bool finished = false;
    int state = straight;

    while (!finished)
    {
        switch(state)
        {
            case straight:
            {   
                currentGoal.preProgrammed = true;
                currentGoal.name = "STRAIGHT";
                currentGoal.maxTime = 3000;

                ROS_INFO("Entered the STRAIGHT state.");

                sendGoalAndWaitResult();

                state = custom;
                break;
            }
            case custom:
            {
                GoalQueueHandler goalQueueHandler;

                rawGoal customA, customB, customC, customD;
                customA.preProgrammed = customB.preProgrammed = customC.preProgrammed = customD.preProgrammed = false;
                customA.anIndexAndPosition = {{0, 30}, {1, 20}, {2, 50}, {3, 0}, {4, 0}};
                customB.anIndexAndPosition = {{0, -30}, {1, 0}, {2, 0}, {3, -45}, {4, 0}};
                customC.anIndexAndPosition = {{0, 40}, {1, 70}, {2, 50}, {3, 40}, {4, 0}};
                customD.anIndexAndPosition = {{0, -70}, {1, -30}, {2, 30}, {3, -20}, {4, 0}};
                customA.maxTime = 1300;
                customB.maxTime = 1300;
                customC.maxTime = 1300;
                customD.maxTime = 1300;

                goalQueueHandler.addGoal(customA);
                goalQueueHandler.addGoal(customB);
                goalQueueHandler.addGoal(customC);
                goalQueueHandler.addGoal(customD);

                while (!goalQueueHandler.getQueue().empty())
                {
                    this->currentGoal = goalQueueHandler.getNextGoal();
                    sendGoalAndWaitResult();
                    if (!ac.getResult()->successFull)
                    {
                        goalQueueHandler.clear();
                    }
                }
            }
            case emergencyBreak:
            {
                ROS_INFO("Entered the EMERGENCY BREAK state.");
                // Creating a goal that will be cancelled by the emergency stop half way.
                currentGoal.preProgrammed = true;
                currentGoal.name = "READY";
                currentGoal.maxTime = 1700;

                ac.sendGoal(currentGoal);
                ros::Duration(1.0).sleep();

                sendEmergencyStop();
                actionlib::SimpleClientGoalState rState = ac.getState();
                ROS_INFO("Action finished: %s", rState.toString().c_str());

                state = park;
                break;
            }
            case park:
            {
                currentGoal.preProgrammed = true;
                currentGoal.name = "PARK";
                currentGoal.maxTime = 3000;

                ROS_INFO("Entered the PARK state.");
                sendGoalAndWaitResult();

                finished = true;
                break;
            }
        }
    }
}

void RobotInterface::sendGoalAndWaitResult()
{
    ac.waitForServer();
    ac.sendGoal(currentGoal);

    ROS_INFO("Sending goal to the RobotInterface.");
        
    bool finishedBeforeTimeout = ac.waitForResult(ros::Duration(30.0));
    if (finishedBeforeTimeout)
    {
        actionlib::SimpleClientGoalState state = ac.getState();
        ROS_INFO("Action finished: %s",state.toString().c_str());
        ROS_INFO("The execution time was: %s milliseconds.", std::to_string(ac.getResult()->executionTime).c_str());
    }
    else
    {
        ROS_INFO("Action did not finish before the time out.");
    }
}

const robot_interface::PositionGoal& RobotInterface::getGoal()
{
    return this->currentGoal;
}

void RobotInterface::setGoal(const robot_interface::PositionGoal& aGoal)
{
    this->currentGoal = aGoal;
}

bool RobotInterface::sendEmergencyStop()
{
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<robot_interface::EmergencyStop>("EmergencyStop");

    robot_interface::EmergencyStop srv;
    srv.request.stop = true;
    return (client.call(srv));
}

}