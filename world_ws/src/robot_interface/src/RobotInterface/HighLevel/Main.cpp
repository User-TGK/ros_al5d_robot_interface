#include "RobotInterface.hpp"

#include <thread>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "RobotInterface");

    /** Allowing ros -debug logging on the console */
    if (ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Debug))
    {
        ros::console::notifyLoggerLevelsChanged();
    }

    if (argc != 3)
    {
        ROS_INFO("Usage: rosrun robot_interface RobotInterface <path to preprogrammed positions configuration file> <USB port on which the servocontroller is connected>");
        return 1;
    }

    std::vector<RobotInterface::HighLevel::Servo> servos;
    servos.push_back(RobotInterface::HighLevel::Servo(0, 2500, 90, 500, -90)); /*   0     */   
    servos.push_back(RobotInterface::HighLevel::Servo(1, 1950, 90, 500, -90)); /*   1500  */
    servos.push_back(RobotInterface::HighLevel::Servo(2, 1950, 135, 500, 0));  /*   750   */
    servos.push_back(RobotInterface::HighLevel::Servo(3, 2500, 90, 500, -90)); /*   1500  */
    servos.push_back(RobotInterface::HighLevel::Servo(4, 2500, 90, 500, -90)); /*   1500  */
    servos.push_back(RobotInterface::HighLevel::Servo(5, 2500, 90, 500, -90));

    try
    {
        ROS_DEBUG("Event occured: PROGRAM STARTED BY THE USER.");
        RobotInterface::HighLevel::PositionAction positionAction("RobotInterface", argv[1], argv[2], servos);
    
        std::thread queueHandler(&RobotInterface::HighLevel::PositionAction::queuedCommandsHandler, &positionAction);

        ros::NodeHandle nh;
        ros::ServiceServer service = nh.advertiseService("EmergencyStop", &RobotInterface::HighLevel::PositionAction::executeEmergencyStop, &positionAction);
        ros::AsyncSpinner spinner(4);
        spinner.start();

        ros::waitForShutdown();
    }
    
    catch(const std::invalid_argument& error)
    {
        std::cerr << "The RobotInterface was shut down: " << error.what() << "\n";
        return 1;
    }
    return 0;
}