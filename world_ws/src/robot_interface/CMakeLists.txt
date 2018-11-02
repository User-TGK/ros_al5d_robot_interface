cmake_minimum_required(VERSION 2.8.3)
project(robot_interface)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  message_generation
  roscpp
  rospy
  std_msgs
)

find_package(Boost REQUIRED COMPONENTS system)

################################################
## Declare ROS messages, services and actions ##
################################################

add_service_files(
  FILES
    EmergencyStop.srv
)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY action
  FILES Position.action
)

add_message_files(
  DIRECTORY msg
  FILES
  Angle.msg
  ##Configuration.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES actionlib_msgs std_msgs
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
  CATKIN_DEPENDS actionlib_msgs message_runtime std_msgs
  LIBRARIES 
)

###########
## Build ##
###########


##target_link_libraries(LowLevelSerial LowLevelCommunication)

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
)

add_library(Communication src/RobotInterface/LowLevel/ICommunication.cpp src/RobotInterface/LowLevel/SerialCommunication.cpp)


add_executable(RobotInterface src/RobotInterface/HighLevel/Main.cpp src/RobotInterface/HighLevel/RobotInterface.cpp  src/RobotInterface/HighLevel/States.cpp src/RobotInterface/HighLevel/Servo.cpp src/RobotInterface/HighLevel/Command.cpp src/RobotInterface/HighLevel/Position.cpp)
target_link_libraries(RobotInterface ${catkin_LIBRARIES} ${Boost_LIBRARIES} Communication)
add_dependencies(RobotInterface ${robot_interface_EXPORTED_TARGETS})

add_executable(MotionPlanner src/MotionPlanner/Main.cpp src/MotionPlanner/MotionPlanner.cpp src/MotionPlanner/GoalQueueHandler.cpp)
target_link_libraries(MotionPlanner ${catkin_LIBRARIES})
add_dependencies(MotionPlanner ${robot_interface_EXPORTED_TARGETS})