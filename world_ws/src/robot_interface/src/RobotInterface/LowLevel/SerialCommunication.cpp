#include "SerialCommunication.hpp"
#include <ros/ros.h>
#include <iostream>

namespace RobotInterface
{
namespace LowLevel
{

SerialCommunication::SerialCommunication(const std::string &aPort)
    : ICommunication(), port(ioservice, aPort)
{
    port.set_option(boost::asio::serial_port_base::baud_rate(9600));
    port.set_option(boost::asio::serial_port::flow_control(boost::asio::serial_port::flow_control::none));
    port.set_option(boost::asio::serial_port::parity(boost::asio::serial_port::parity::none));
    port.set_option(boost::asio::serial_port::stop_bits(boost::asio::serial_port::stop_bits::one));
    port.set_option(boost::asio::serial_port::character_size(boost::asio::serial_port::character_size(8)));
}

bool SerialCommunication::sendCommand(const std::string& str)
{
    boost::asio::streambuf b;
    std::ostream os(&b);
    os << str;
    boost::asio::write(port, b.data());
    os.flush();

    return true;
}

SerialCommunication::~SerialCommunication()
{
}

}
}