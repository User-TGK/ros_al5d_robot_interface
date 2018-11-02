#ifndef STATES_HPP_
#define STATES_HPP_

#include <unordered_map>

namespace RobotInterface
{
namespace HighLevel
{

/** Enum that contains all the states the program can be in */
enum class States : uint8_t
{
    CONFIGURATIONCHECK,
    INIT,
    MOVING,
    WAITING,
    STOP,
    READING,
    WRITING
};

/** Mapping between the states and its string representation (used for ROS INFO output)*/
const std::unordered_map<std::string, States> statesMap =
    {
        {"CONFIGURATIONCHECK", States::CONFIGURATIONCHECK},
        {"INIT", States::INIT},
        {"MOVING", States::MOVING},
        {"WAITING", States::WAITING},
        {"STOP", States::STOP},
        {"READING", States::READING},
        {"WRITING", States::WRITING}};

std::string stateToStr(const States &aState);
}
}
#endif //STATES_HPP_