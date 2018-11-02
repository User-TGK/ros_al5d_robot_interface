#ifndef SERIAL_COMMUNICATION_HPP_
#define SERIAL_COMMUNICATION_HPP_

#include <string>
#include <boost/asio.hpp>
#include "ICommunication.hpp"

namespace RobotInterface
{
namespace LowLevel
{

/**
 * @brief deriving from ICommunication: class that implement the send command for a serial connection
 * 
 */
class SerialCommunication : public ICommunication
{
public:
  /**
  * @brief initialises a SerialCommunication instance
  * 
  * @param aPort the path to the port which will be used for communication
  */
  SerialCommunication(const std::string& aPort);

  /**
   * @brief destructor
   */
  virtual ~SerialCommunication();

  /**
  * @brief validates send goal and sends it to the SSC32U
  * 
  * @return true if goal is reachable
  * @return false if goal is unreachable
  */
  bool sendCommand(const std::string &str);

private:
  /** IOservice for the boost::asio serial communication */
  boost::asio::io_service ioservice;
  /** Port: the port the SSC32U is connected to */
  boost::asio::serial_port port;
};

}
}
#endif // SERIAL_COMMUNICATION_HPP_