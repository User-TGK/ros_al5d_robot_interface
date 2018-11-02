#ifndef POSITION_HPP_
#define POSITION_HPP_

#include <string>
#include <map>

namespace RobotInterface
{
namespace HighLevel
{

/**
 * @brief A position has a name and a map with servo indexes and positions
 * 
 */
struct Position
{
    /**
             * @brief default constructor
             */
    explicit Position();

    /**
             * @brief copy constructor
             * @param aPosition the original position -object to be copied
             */
    Position(const Position &aPosition);

    /**
             * @brief constructor for a customized position
             * 
             * @param aName the name of the position
             * @param anIndexAndPosition a mapping between the servo id (key) and position in degrees (value)
             */
    Position(const std::string &aName, const std::map<unsigned long, short> &anIndexAndPosition);

    /** The name of the position */
    std::string name;

    /** A mapping between the servo id (key) and position in degrees (value) */
    std::map<unsigned long, short> indexAndPosition;

    /**
             * @brief assignment operator for a position
             * 
             * @param rhs the Position instance that contains the values to be set
             * @return Position& the position with the assigned values
             */
    Position &operator=(const Position &rhs);
};
}
}
#endif //POSITION_HPP_