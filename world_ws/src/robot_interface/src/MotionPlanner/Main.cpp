#include "MotionPlanner.hpp"

#include <iostream>
#include <thread>
#include <sstream>

int main (int argc, char* argv[])
{
    ros::init(argc, argv, "RobotInterfaceClient");
    MotionPlanner::RobotInterface robotClient;

    if (argc == 2 || argv[2] == "demo")
    {
        ROS_INFO("<DE01>: MOTION-PLANNER DEMO STARTED.");
        robotClient.runDemo();
        return 0;
    }
    else
    {
        MotionPlanner::GoalQueueHandler goalQueueHandler;

        try
        {
            goalQueueHandler.addRawGoal(argc, argv);
        }
        catch (const std::string& warn)
        {
            ROS_WARN("WARNING: %s", warn.c_str());

            std::cout << "Usage: (pick either format A, B or C)" << std::endl;
            std::cout << "A: '$ rosrun robot_interface MotionPlanner <position> <time>' where position can be PARK, READY or STRAIGHT' and the time to get there in milliseconds." << std::endl;
            std::cout << "B: '$ rosrun robot_interface MotionPlanner <idA> <positionA> <idB> <positionB> <idC> <positionC> <idD> <positionD> <idE> <positionE> <time>'." << std::endl;
            std::cout << "id<X> is the ID of the servo you want to set the position of and position<Y> is the corner of the servo in degrees and the time to get there in milliseconds." << std::endl;
            std::cout << "C: '$ rosrun robot_interface MotionPlanner demo', this will run the demo program." << std::endl;
        }

        while (!goalQueueHandler.getQueue().empty())
        {
            try
            {
                robotClient.setGoal(goalQueueHandler.getNextGoal());
                robotClient.sendGoalAndWaitResult();
            }
            catch(const std::string& n)
            {
                std::cout << "ERROR MESSAGE: " << n << std::endl;
            }
        }
    }
    return 0;
}