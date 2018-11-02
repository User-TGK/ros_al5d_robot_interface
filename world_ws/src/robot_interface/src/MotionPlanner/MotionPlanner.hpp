#ifndef MOTIONPLANNER_HPP_
#define MOTIONPLANNER_HPP_

#include "GoalQueueHandler.hpp"

#include <ros/ros.h>
#include <ros/time.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

#include <string>
#include <map>

/** The motionplanner interface contains test code that uses functionality of the RobotInterface. */
namespace MotionPlanner
{

/**
 * @brief Class that contains the demonstration and acts as MotionPlanner. 
 */
class RobotInterface
{
  public:
    /**
     * @brief default constructor of the interface (client)
     */
    RobotInterface();

    /**
     * @brief the destructor of the interface (client)
     */
    ~RobotInterface();

    /**
    * @brief function that gets the current set goal
    * 
    * @return robot_interface::PositionGoal action goal that was set
    */
    const robot_interface::PositionGoal &getGoal();

    /**
     * @brief Set the Goal object
     * 
     * @param aGoal the goal to be set
     */
    void setGoal(const robot_interface::PositionGoal &aGoal);

    /**
     * @brief function that will cancel all set goals at the RobotInterface (server)
     * 
     * @return true if the emergency stop was successfull
     */
    bool sendEmergencyStop();

    /**
     * @brief function that sends a goal and waits untill the result is returned by the interface
     */
    void sendGoalAndWaitResult();

    /**
     * @brief function that runs a demo instance of the motion-planner
     */
    void runDemo();

    /** The ActionClient */
    actionlib::SimpleActionClient<robot_interface::PositionAction> ac;

  private:
    /** The goal of the client to be send to the server. */
    robot_interface::PositionGoal currentGoal;
};
}
#endif //MOTIONPLANNER_HPP_