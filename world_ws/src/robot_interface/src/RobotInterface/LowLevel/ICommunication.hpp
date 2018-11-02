#ifndef ICOMMUNICATION_HPP_
#define ICOMMUNICATION_HPP_

#include <vector>
#include <map>
#include <ros/ros.h>
#include <string>

namespace RobotInterface
{
/** LowLevel driver that contains a 1 on 1 mapping of the SCC-32U servo controller interface: only the functionality
 that is relevant for this exercise. */
namespace LowLevel
{

/**
 * @brief class that contains the lowlevel functionality. Functions that map the servo controller's functionality
 * For each new communication method: create a deriving class and override the send command function
 * 
 */
class ICommunication
{
  public:
    /**
     * @brief default constructor
     */
    explicit ICommunication();

    /**
     * @brief destructor
     */
    virtual ~ICommunication();

    /**
     * @brief validates send goal and sends it to the SSC32U
     * 
     * @return true if goal is reachable
     * @return false if goal is unreachable
     */
    virtual bool sendCommand(const std::string &str) = 0;

    /**
     * @brief function that sets a position command with a speed indication to string form
     * 
     * @param indexAndPosition mapping beteween servo id's and the position in PWM the servo should move to
     * @param speed the speed in US
     * @return std::string the command converted to a string
     */
    std::string positionSpeedCommandToStr(const std::map<unsigned long, short> &indexAndPosition, long speed);

    /**
     * @brief function that sends an emergency stop command to the robot
     * 
     * @param indexAndPosition mapping beteween servo id's and the position in PWM the servo should move to
     * @return std::string the string representation of the command
     */
    std::string emergencyStopCommandToStr(const std::map<unsigned long, short> &indexAndPosition);

    /**
     * @brief function that creates a string representation of a low level SSC32U command
     * 
     * @param indexAndPosition mapping beteween servo id's and the position in PWM the servo should move to
     * @param maxTime the maximum time a command may take
     * @return std::string the string representation of the low level SSC32U command
     */
    std::string positionTimeCommandToStr(const std::map<unsigned long, short> &indexAndPosition, long maxTime);
};
}
}
#endif // ICOMMUNICATION_HPP_