#include "ICommunication.hpp"

#include <algorithm>

namespace RobotInterface
{
namespace LowLevel
{

ICommunication::ICommunication()
{
}

ICommunication::~ICommunication()
{
}

std::string ICommunication::positionSpeedCommandToStr(const std::map<unsigned long, short>& indexAndPosition, long speed)
{
    std::stringstream ss;
    for (const auto& pair :indexAndPosition)
    {
        ss << "#" << pair.first << "P" << pair.second << "S" << speed;
    }
    ss << "\r\n";
    return ss.str();
}

std::string ICommunication::emergencyStopCommandToStr(const std::map<unsigned long, short>& indexAndPosition)
{
    // std::stringstream ss;

    // for (const auto& pair : indexAndPosition)
    // {
    //     ss << "STOP" << pair.first << " \r\n";
    // }
    // return ss.str();
    return "STOP\r";
}

std::string ICommunication::positionTimeCommandToStr(const std::map<unsigned long, short>& indexAndPosition, long maxTime)
{
    std::stringstream ss;
    for (const auto& pair :indexAndPosition)
    {
        ss << "#" << pair.first << "P" << pair.second;
    }
    ss << "T" << maxTime << "\r\n";
    return ss.str();
}

}
}