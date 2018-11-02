# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(FATAL_ERROR "Could not find messages which '/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/msg/Angle.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [int] in package [robot_interface] with paths [['/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg', '/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/msg']]")
message(STATUS "robot_interface: 8 messages, 1 services")

set(MSG_I_FLAGS "-Irobot_interface:/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg;-Irobot_interface:/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/msg;-Iactionlib_msgs:/opt/ros/lunar/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" "actionlib_msgs/GoalID:robot_interface/PositionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" ""
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" "actionlib_msgs/GoalID:robot_interface/PositionResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" "robot_interface/PositionActionGoal:robot_interface/PositionActionResult:std_msgs/Header:robot_interface/PositionFeedback:robot_interface/PositionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:robot_interface/PositionResult:robot_interface/PositionActionFeedback"
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:robot_interface/PositionFeedback"
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" ""
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" ""
)

get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_custom_target(_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_interface" "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)
_generate_msg_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)

### Generating Services
_generate_srv_cpp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
)

### Generating Module File
_generate_module_cpp(robot_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_interface_generate_messages robot_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_cpp _robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_interface_gencpp)
add_dependencies(robot_interface_gencpp robot_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)
_generate_msg_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)

### Generating Services
_generate_srv_eus(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
)

### Generating Module File
_generate_module_eus(robot_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_interface_generate_messages robot_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_eus _robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_interface_geneus)
add_dependencies(robot_interface_geneus robot_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)
_generate_msg_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)

### Generating Services
_generate_srv_lisp(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
)

### Generating Module File
_generate_module_lisp(robot_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_interface_generate_messages robot_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_lisp _robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_interface_genlisp)
add_dependencies(robot_interface_genlisp robot_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)
_generate_msg_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)

### Generating Services
_generate_srv_nodejs(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
)

### Generating Module File
_generate_module_nodejs(robot_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_interface_generate_messages robot_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_nodejs _robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_interface_gennodejs)
add_dependencies(robot_interface_gennodejs robot_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/lunar/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg;/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)
_generate_msg_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)

### Generating Services
_generate_srv_py(robot_interface
  "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
)

### Generating Module File
_generate_module_py(robot_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_interface_generate_messages robot_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionAction.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionActionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionGoal.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg/PositionResult.msg" NAME_WE)
add_dependencies(robot_interface_generate_messages_py _robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_interface_genpy)
add_dependencies(robot_interface_genpy robot_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_interface_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_interface_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_interface_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_interface_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_interface_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
