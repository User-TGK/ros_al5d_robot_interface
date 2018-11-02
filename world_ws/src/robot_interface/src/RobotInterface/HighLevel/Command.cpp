#include "Command.hpp"

#include <stdexcept>
#include <cstdlib>
#include <string>

namespace RobotInterface
{
namespace HighLevel
{

Command::Command()
{
}

Command::~Command()
{
}

bool Command::tryPreSetPosition(const std::string& aName, unsigned long aMaxTime, const std::vector<Position>& preProgrammedPositions)
{
    try
    {
        for (const auto& preProgammedPosition : preProgrammedPositions)
        {
            if (preProgammedPosition.name == aName)
            {
                std::string nn = aName;
                ROS_DEBUG("Guard triggered: COMMAND IS VALID [%s] (commandIsValid()).",  nn.c_str());

                this->maxTime = aMaxTime;
                this->position = preProgammedPosition;

                return true;
            }
        }
        throw(aName);
    }
    catch(const std::string& cmd)
    {
        ROS_WARN("TRIED TO SET A PREPROGRAMMED POSITION THAT DOESN'T EXIST. What: '%s'.", cmd.c_str());
    }
    return false;
}

void Command::convertToPWM(const std::vector<Servo>& servos)
{
    for (auto& pair : position.indexAndPosition)
    {
        bool exists = false;
        Servo servoMatch;
        for (auto& s: servos)
        {
            if (s.getId() == pair.first)
            {
                pair.second = s.convertToPwm(pair.second);
            }
        }
    }
    anglesAreConverted = true;
}

bool Command::validateCommand(const std::vector<Servo>& servos) const
{
    if (emergencyStop)
    {
        return true;
    }
    bool validated = false;
    for (const auto& pair : position.indexAndPosition)
    {
        bool exists = false;
        Servo servoMatch;
        for (const auto& s: servos)
        {
            if (s.getId() == pair.first)
            {
                exists = true;
                servoMatch = s;
            }
        }
        if (!exists)
        {
            ROS_WARN("INVALID SERVO-ID, THE IDs SHOULD BETWEEN 0 and 5.");
            return false;
        }
        if (pair.second < servoMatch.getMinAngle() || pair.second > servoMatch.getMaxAngle())
        {
            ROS_WARN("<QOS VE02>: RANGE OF MOTION VIOLATION DETECTED. SET A VALID ANGLE FOR EACH SERVO!");
            return false;
        }
        exists = false;
    }
    return true;
}

bool Command::tryCustomPosition(const std::map<unsigned long, short>& anIndexAndPosition, unsigned long aMaxTime)
{
    this->position.name = "CustomizedPosition";
    this->maxTime = aMaxTime;
    setIndexAndPosition(anIndexAndPosition);

    ROS_DEBUG("Guard triggered: COMMAND IS VALID [%s] (commandIsValid()).",  std::string("CUSTOMIZED").c_str());
    return true;
}

unsigned long Command::verifyEndTime() const
{
    if (anglesAreConverted) { ROS_WARN("TO VERIFY THE END TIME OF A COMMAND THE ANGLES MUST BE SET IN DEGREES."); }

    /** The slowest servo attatched to the LynxMotion can move 180 degrees in 0.84 seconds */
    /** Source: Attachments: "hs755hb.pdf" */
    double maxMovingTime = 840;

    short maxDegree = 90;
    short minDegree = -90;

    if (maxTime >= maxMovingTime)
    {
        return maxTime; /** If the requested maxTime is bigger than 
                        the max moving time the robot will reach the position in the requested time */
    }
    else
    {
        unsigned long expectedTime;
        long maxDiff;
        for (const auto& pair : position.indexAndPosition)
        {
            maxDiff = std::abs(maxDegree - pair.second);
            if (std::abs(pair.second - minDegree) > maxDiff)
            {
                maxDiff = std::abs(pair.second - minDegree);
            }
        }
        expectedTime = maxMovingTime/180 * maxDiff;
        if (expectedTime > maxTime)
        {
            ROS_WARN("REQUESTED TIME CAN NOT BE ACHIEVED. EXPECTED EXECUTION TIME: %s ms.", std::to_string(expectedTime).c_str());
        }
        return expectedTime;
    }
}

void Command::setPosition(const Position& aPosition)
{
    this->position = aPosition;
}

Position Command::getPosition() const
{
    return this->position;
}

unsigned long Command::getMaxTime() const
{
    return this->maxTime;
}

void Command::setMaxTime(unsigned long aMaxTime)
{
    this->maxTime = aMaxTime;
}

void Command::setIndexAndPosition(const std::map<unsigned long, short>& anIndexAndPosition)
{
    this->position.indexAndPosition = anIndexAndPosition;
}

void Command::setEmergencyStop(bool anEmergencyStop)
{
    this->emergencyStop = anEmergencyStop;
}

bool Command::isEmergencyStop() const
{
    return this->emergencyStop;
}

bool Command::areAnglesAreConverted() const
{
    return this->anglesAreConverted;
}

}
}