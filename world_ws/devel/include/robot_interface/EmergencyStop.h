// Generated by gencpp from file robot_interface/EmergencyStop.msg
// DO NOT EDIT!


#ifndef ROBOT_INTERFACE_MESSAGE_EMERGENCYSTOP_H
#define ROBOT_INTERFACE_MESSAGE_EMERGENCYSTOP_H

#include <ros/service_traits.h>


#include <robot_interface/EmergencyStopRequest.h>
#include <robot_interface/EmergencyStopResponse.h>


namespace robot_interface
{

struct EmergencyStop
{

typedef EmergencyStopRequest Request;
typedef EmergencyStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EmergencyStop
} // namespace robot_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_interface::EmergencyStop > {
  static const char* value()
  {
    return "4a6d1a2c36071773212f354473f5e208";
  }

  static const char* value(const ::robot_interface::EmergencyStop&) { return value(); }
};

template<>
struct DataType< ::robot_interface::EmergencyStop > {
  static const char* value()
  {
    return "robot_interface/EmergencyStop";
  }

  static const char* value(const ::robot_interface::EmergencyStop&) { return value(); }
};


// service_traits::MD5Sum< ::robot_interface::EmergencyStopRequest> should match 
// service_traits::MD5Sum< ::robot_interface::EmergencyStop > 
template<>
struct MD5Sum< ::robot_interface::EmergencyStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_interface::EmergencyStop >::value();
  }
  static const char* value(const ::robot_interface::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_interface::EmergencyStopRequest> should match 
// service_traits::DataType< ::robot_interface::EmergencyStop > 
template<>
struct DataType< ::robot_interface::EmergencyStopRequest>
{
  static const char* value()
  {
    return DataType< ::robot_interface::EmergencyStop >::value();
  }
  static const char* value(const ::robot_interface::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_interface::EmergencyStopResponse> should match 
// service_traits::MD5Sum< ::robot_interface::EmergencyStop > 
template<>
struct MD5Sum< ::robot_interface::EmergencyStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_interface::EmergencyStop >::value();
  }
  static const char* value(const ::robot_interface::EmergencyStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_interface::EmergencyStopResponse> should match 
// service_traits::DataType< ::robot_interface::EmergencyStop > 
template<>
struct DataType< ::robot_interface::EmergencyStopResponse>
{
  static const char* value()
  {
    return DataType< ::robot_interface::EmergencyStop >::value();
  }
  static const char* value(const ::robot_interface::EmergencyStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_INTERFACE_MESSAGE_EMERGENCYSTOP_H