# World of Robots - World

## Authors: Ties Klappe & Wouter Meijer

## Date: 18-03-2018

## Prerequisites

1. Operating system Linux Debian Stable or Ubuntu 17.04 LTS
2. RoS Lunar installed

## Build instructions

1. Navigate to the world_ws directory
2. A Build the application with ** "catkin_make" **
2. B You might have to adjust settings in CMakeLists.txt for your own computer (delete the build dir)

## Run instructions

1. Run roscore in a new terminal by executing ** "roscore" **
2. Run the interface server in a new terminal by:
- Navigate to world_ws
- Run ** "source devel/setup.bash" **
- Run ** "rosrun robot_interface RobotInterace [path to preprogrammed positions] [USB port on which the SSC-30U is connection]" ** 
- Example: '$ rosrun robot_interface RobotInterace src/config/Preprogrammed.ini /dev/ttyUSB0'
3. Run the motionplanner in a new terminal by:
- Navigate to world_ws
- Run ** "source devel/setup.bash"

Run the MotionPlanner by choosing on of three options:

3A. '$ rosrun robot_interface MotionPlanner <position> <time>'
            Waarbij position PARK, READY of STRAIGHT kan zijn en de tijd in milliseconden is.

3B. '$ rosrun robot_interface MotionPlanner <idA> <positionA> <idB> <positionB> <idC> <positionC> <idD> <positionD> <idE> <positionE> <time> '
        Waarbij het id het desbetreffende servo id is en de position een hoek in graden is en de tijd in milliseconden is.

3C. '$ rosrun robot_interface MotionPlanner demo'
        Wat het demo programma runt.