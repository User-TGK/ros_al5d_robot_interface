#ifndef ROBOTINTERFACE_HPP_
#define ROBOTINTERFACE_HPP_

#include "Command.hpp"
#include "States.hpp"

/* Including the DLL */
#include "../LowLevel/SerialCommunication.hpp"

#include "robot_interface/EmergencyStop.h"
#include <actionlib/server/simple_action_server.h>
#include <robot_interface/PositionAction.h>
#include <boost/asio.hpp>
#include <string>
#include <vector>
#include <memory>
#include <queue>

/** The interface contains a high and low -level driver. */
namespace RobotInterface
{
/** HighLevel driver that contains all the high-level functionality of the interface. */
namespace HighLevel
{

/**
 * @brief the interface 'main' (ROS-Server)
 */
class PositionAction
{
  private:
    /** List that contains all preprogrammed positions (after they are parsed) */
    std::vector<Position> preProgrammedPositions;

    /** Current state the server is in, the start state is always the initialization state */
    States state = States::CONFIGURATIONCHECK;

    /** Queue that contains all commands to be executed */
    std::queue<Command> commands;

    /** Queue with goals that were rejected */
    std::queue<robot_interface::PositionGoalConstPtr> rejectedGoals;

    /**
     * @brief Function that will convert a goal to a command (so the command can easily be used)
     * 
     * @param command reference to the command where the goal will be stored in
     * @param goal the goal to be converted
     * @return true if the goal was a valid goal and converted successfully
     * @return false if the goal could not be converted successfully
     */
    bool goalToCommand(Command &command, const robot_interface::PositionGoalConstPtr &goal);

    /** (Static) The number of DOF's the arm contains. */
    static const unsigned short NROFDOFS = 5;

    /** the servos attatched to the arm */
    std::vector<Servo> servos;

    /** ROS- actionlib server instance */
    actionlib::SimpleActionServer<robot_interface::PositionAction> as_;

    /**
    * @brief this function parses a configuration file that contains pre-progammed position information
    * 
    * @param path points to the location of the configuration file
    * @return true if the parsing went successfull, false if not
    * @exception throws an exception in the form of a ROS warning if the preprogrammed position doesn't exist
    */
    bool parsePreProgrammedPositions(const std::string &path);

    /**
     * @brief initialization function moves to the initialize -state on program start-up
     */
    void initialize();

    /**
     * @brief function that preempts all queued commands
     */
    void preemptAllQueuedCommands();

  protected:
    /** Name of the action */
    std::string action_name_;

    /** Result instance */
    robot_interface::PositionResult result_;

    /** Communication instance */
    std::shared_ptr<RobotInterface::LowLevel::ICommunication> communicator;

  public:
    /**
     * @brief function that gets a preprogrammed posiiton based on its name
     * 
     * @param name the name of the preprogrammed position to return
     * @return Position& the position with that name
     */
    Position &getPreProgrammedPosition(const std::string &name);

    /**
     * @brief constructor of the server
     * 
     * @param name name of the server
     * @param configPath the path to configuration file where the preprogrammed positions are stored
     * @param aServos the servo instances of the robot
     * @param port the serial port to which the servo controller is connected
     */
    PositionAction(const std::string &name, const std::string &configPath, const std::string &port, const std::vector<Servo> &aServos);

    /** Destructor of the action server */
    ~PositionAction(void);
    /**
     * @brief callback function that will be executed when an emergency stop service requests is received
     * 
     * @param req the request the defines the emergency stop
     * @param res the result: true if the emergency stop was successfull, false if not
     */
    bool executeEmergencyStop(robot_interface::EmergencyStop::Request &req, robot_interface::EmergencyStop::Response &res);

    /**
     * @brief callback function that is called when a goal is received
     */
    void goalCB();

    /** Function that handles all queued commands in FIFO order */
    void queuedCommandsHandler();

    /**
     * @brief callback function that is called when a preempt is received
     */
    void preemptCB();
};
}
}

#endif //ROBOTINTERFACE_HPP_