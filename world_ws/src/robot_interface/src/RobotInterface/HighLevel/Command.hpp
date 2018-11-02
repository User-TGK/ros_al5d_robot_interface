#ifndef COMMAND_HPP_
#define COMMAND_HPP_

#include "Servo.hpp"
#include "Position.hpp"

#include <ros/ros.h>
#include <robot_interface/PositionAction.h>

#include <vector>
#include <utility>
#include <map>
#include <iostream>
#include <string>

namespace RobotInterface
{
namespace HighLevel
{

/**
 * @brief class that contains all information about a goal.
 */
class Command
{
  public:
    /**
     * @brief default constructor
     */
    Command();

    /**
     * @brief destructor
     */
    ~Command();

    /**
    * @brief function that tries to set the position of the robotic arm, based on a pre-programmed command
    * (a command that is stored in the configuration file)
    * 
    * @param aName the name of the pre-programmed position that is requested
    * @param aMaxTime the maximum time the robotic arm is allowed to take to execute the command
    * @param preProgrammedPositions a reference to the list with the pre-programmed positions
    * @return bool true if the command exists and can be executed, false if not
    */
    bool tryPreSetPosition(const std::string& aName, unsigned long aMaxTime, const std::vector<Position>& preProgrammedPositions);

    /**
     * @brief function that tries to set the position of the robotic arm, based on arguments given on start-up
     * 
     * @param anIndexAndPosition a map where the ID of a specific servo is on the index side, and the position (in degrees)
     * is on the right side
     * @param aMaxTime the maximum time the robotic arm is allowed to take to execute the command
     * @return bool true if the command exists and can be executed, false if not
     */
    bool tryCustomPosition(const std::map<unsigned long, short> &anIndexAndPosition, unsigned long aMaxTime);

    /**
     * @brief function that sets the position of a command
     * 
     * @param aPosition the position to be set
     */
    void setPosition(const Position &aPosition);

    /**
     * @brief function that returns
     * 
     * @return Position 
     */
    Position getPosition() const;

    /**
     * @brief function that sets a mapping between servo ID's and matching positions
     * 
     * @param anIndexAndPosition 
     */
    void setIndexAndPosition(const std::map<unsigned long, short> &anIndexAndPosition);

    /**
     * @brief getter for the maximum time a command may take
     * 
     * @return unsigned long the maximum time set
     */
    unsigned long getMaxTime() const;

    /**
     * @brief function that validates if a command is valid or not
     * 
     * @param servos the servos that contain information about minimum and maximum positions a servo may be in
     * @return true if a command is validated
     * @return false if a command is not valid
     */
    bool validateCommand(const std::vector<Servo> &servos) const;

    /**
     * @brief setter for the maximum time the command may take
     * 
     * @param aMaxTime the maximum time a command may take
     */
    void setMaxTime(unsigned long aMaxTime);

    /**
     * @brief function that sets a command to be an emergency stop -command
     * 
     * @param anEmergencyStop true for an emergency stop, false if not
     */
    void setEmergencyStop(bool anEmergencyStop);

    /**
     * @brief function that tells wheter the command is an emergency stop or a normal command
     * 
     * @return true if the command is an emergency stop
     * @return false if the command is a normal command
     */
    bool isEmergencyStop() const;

    /**
     * @brief function that converts the angles set from degrees to PWM
     * 
     * @param servos the servos that contain the information to convert an angle from degrees to PWM
     */
    void convertToPWM(const std::vector<Servo> &servos);

    /**
     * @brief function that tells if the angles are converted to PWM or not
     * 
     * @return true if the angles are converted to PWM
     * @return false if the angles are still in degrees
     */
    bool areAnglesAreConverted() const;

    /**
     * @brief INF03 requirement function that calculates wheter the robot will reach the goal in the given time 
     * and give a warning if this is not the case
     * 
     * @return unsigned long the expected end time
     */
    unsigned long verifyEndTime() const;

  private:
    /** The maximum time the robotic arm may take to execute the command */
    unsigned long maxTime;

    /** The position the arm should move to according to the command */
    Position position;

    /** A command can be an emergency stop command */
    bool emergencyStop = false;

    /** A boolean that is false if the angles of the position are set in degrees and true if theyre set in PWM */
    bool anglesAreConverted = false;
};
}
}
#endif //COMMAND_HPP_