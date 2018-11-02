# Install script for directory: /home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/srv" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/action" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/action/Position.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/msg" TYPE FILE FILES
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/cmake" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/build/robot_interface/catkin_generated/installspace/robot_interface-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/include/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/roseus/ros/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/common-lisp/ros/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/gennodejs/ros/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/lib/python2.7/dist-packages/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/lib/python2.7/dist-packages/robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/build/robot_interface/catkin_generated/installspace/robot_interface.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/cmake" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/build/robot_interface/catkin_generated/installspace/robot_interface-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface/cmake" TYPE FILE FILES
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/build/robot_interface/catkin_generated/installspace/robot_interfaceConfig.cmake"
    "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/build/robot_interface/catkin_generated/installspace/robot_interfaceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_interface" TYPE FILE FILES "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/package.xml")
endif()

