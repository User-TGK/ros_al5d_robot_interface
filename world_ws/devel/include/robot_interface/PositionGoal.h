// Generated by gencpp from file robot_interface/PositionGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_INTERFACE_MESSAGE_POSITIONGOAL_H
#define ROBOT_INTERFACE_MESSAGE_POSITIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_interface
{
template <class ContainerAllocator>
struct PositionGoal_
{
  typedef PositionGoal_<ContainerAllocator> Type;

  PositionGoal_()
    : preProgrammed(false)
    , position()
    , id()
    , maxTime(0)
    , name()  {
    }
  PositionGoal_(const ContainerAllocator& _alloc)
    : preProgrammed(false)
    , position(_alloc)
    , id(_alloc)
    , maxTime(0)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _preProgrammed_type;
  _preProgrammed_type preProgrammed;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _position_type;
  _position_type position;

   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _id_type;
  _id_type id;

   typedef uint64_t _maxTime_type;
  _maxTime_type maxTime;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::robot_interface::PositionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_interface::PositionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PositionGoal_

typedef ::robot_interface::PositionGoal_<std::allocator<void> > PositionGoal;

typedef boost::shared_ptr< ::robot_interface::PositionGoal > PositionGoalPtr;
typedef boost::shared_ptr< ::robot_interface::PositionGoal const> PositionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_interface::PositionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_interface::PositionGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robot_interface::PositionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_interface::PositionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_interface::PositionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_interface::PositionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_interface::PositionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_interface::PositionGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_interface::PositionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86420113f433e06cdfdcc61a54beacb3";
  }

  static const char* value(const ::robot_interface::PositionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86420113f433e06cULL;
  static const uint64_t static_value2 = 0xdfdcc61a54beacb3ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_interface::PositionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_interface/PositionGoal";
  }

  static const char* value(const ::robot_interface::PositionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_interface::PositionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
bool     preProgrammed\n\
int16[]  position \n\
uint16[] id\n\
uint64   maxTime\n\
string   name\n\
";
  }

  static const char* value(const ::robot_interface::PositionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_interface::PositionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.preProgrammed);
      stream.next(m.position);
      stream.next(m.id);
      stream.next(m.maxTime);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_interface::PositionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_interface::PositionGoal_<ContainerAllocator>& v)
  {
    s << indent << "preProgrammed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.preProgrammed);
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "id[]" << std::endl;
    for (size_t i = 0; i < v.id.size(); ++i)
    {
      s << indent << "  id[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.id[i]);
    }
    s << indent << "maxTime: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.maxTime);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_INTERFACE_MESSAGE_POSITIONGOAL_H
