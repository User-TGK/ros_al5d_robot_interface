#include "Position.hpp"

namespace RobotInterface
{
namespace HighLevel
{

Position::Position()
{
}

Position::Position(const Position& aPosition):
    name(aPosition.name), indexAndPosition(aPosition.indexAndPosition)
{
}

Position::Position(const std::string& aName, const std::map<unsigned long, short>& anIndexAndPosition) :
    name(aName), indexAndPosition(anIndexAndPosition)
{
}

Position& Position::operator=(const Position& rhs)
{
    name = rhs.name;
    indexAndPosition = rhs.indexAndPosition;
}

}
}