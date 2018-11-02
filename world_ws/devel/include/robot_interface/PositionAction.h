// Generated by gencpp from file robot_interface/PositionAction.msg
// DO NOT EDIT!


#ifndef ROBOT_INTERFACE_MESSAGE_POSITIONACTION_H
#define ROBOT_INTERFACE_MESSAGE_POSITIONACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_interface/PositionActionGoal.h>
#include <robot_interface/PositionActionResult.h>
#include <robot_interface/PositionActionFeedback.h>

namespace robot_interface
{
template <class ContainerAllocator>
struct PositionAction_
{
  typedef PositionAction_<ContainerAllocator> Type;

  PositionAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  PositionAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_interface::PositionActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::robot_interface::PositionActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::robot_interface::PositionActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::robot_interface::PositionAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_interface::PositionAction_<ContainerAllocator> const> ConstPtr;

}; // struct PositionAction_

typedef ::robot_interface::PositionAction_<std::allocator<void> > PositionAction;

typedef boost::shared_ptr< ::robot_interface::PositionAction > PositionActionPtr;
typedef boost::shared_ptr< ::robot_interface::PositionAction const> PositionActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_interface::PositionAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_interface::PositionAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_interface

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/lunar/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg'], 'robot_interface': ['/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/devel/share/robot_interface/msg', '/home/ties/Documents/WorldOfRobots/World/world-beroepsproduct1/world_ws/src/robot_interface/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_interface::PositionAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_interface::PositionAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_interface::PositionAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_interface::PositionAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_interface::PositionAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_interface::PositionAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_interface::PositionAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63e20b9b030cb22827591f8a60580e83";
  }

  static const char* value(const ::robot_interface::PositionAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63e20b9b030cb228ULL;
  static const uint64_t static_value2 = 0x27591f8a60580e83ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_interface::PositionAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_interface/PositionAction";
  }

  static const char* value(const ::robot_interface::PositionAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_interface::PositionAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
PositionActionGoal action_goal\n\
PositionActionResult action_result\n\
PositionActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
PositionGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
bool     preProgrammed\n\
int16[]  position \n\
uint16[] id\n\
uint64   maxTime\n\
string   name\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PositionResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
uint64 executionTime\n\
bool   successFull\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PositionFeedback feedback\n\
\n\
================================================================================\n\
MSG: robot_interface/PositionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
";
  }

  static const char* value(const ::robot_interface::PositionAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_interface::PositionAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_interface::PositionAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_interface::PositionAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::robot_interface::PositionActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::robot_interface::PositionActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::robot_interface::PositionActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_INTERFACE_MESSAGE_POSITIONACTION_H
