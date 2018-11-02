#include "States.hpp"

namespace RobotInterface
{
namespace HighLevel
{

std::string stateToStr(const States& aState)
{
    for (const auto& pair: statesMap)
    {
        if (pair.second == aState)
        {
            return pair.first;
        }
    }
    throw std::invalid_argument("Exception in parsing a state to string.");
}

}
}