#ifndef SERVO_HPP_
#define SERVO_HPP_

namespace RobotInterface
{
namespace HighLevel
{

/**
 * @brief This class is used for angle calculation and Servo operations
 */
class Servo
{
  public:
    /**
     * @brief explicit edefault constructor
     */
    explicit Servo();

    /**
     * @brief initialises a Servo instance
     * 
     * @param anId servo ID
     * @param aMaxPWM the maximum PWM signal that the Servo can move to
     * @param aMaxAngle the maximum angle the Servo can move to
     * @param aMinPWM the minimum PWM signal that the Servo can move to
     * @param aMinAngle the minimum angle the Servo can move to
     */
    Servo(unsigned long anId, unsigned long aMaxPWM, short aMaxAngle, unsigned long aMinPWM, short aMinAngle);

    /**
     * @brief copy constructor used for containers
     * 
     * @param rhs the right hand side Servo
     */
    Servo(const Servo &rhs);

    /**
     * @brief destructor of a Servo
     */
    virtual ~Servo();

    /**
     * @brief converts an angle to a PWM signal
     * 
     * @param anAngle the angle to be converted
     * @return unsigned long the PWM signal corresponding to the angle
     */
    unsigned long convertToPwm(short anAngle) const;

    /**
     * @brief converts a PWM signal to an angle
     * 
     * @param aPWM the PWM signal to be converted
     * @return short the angle corresponding to the PWM signal
     */
    short convertToAngle(unsigned long aPWM);

    /**
     * @brief assignment operator used for containers
     * 
     * @param rhs the right hand side Servo
     * @return Servo& the newly assigned servo
     */
    Servo &operator=(const Servo &rhs);

    /**
     * @brief getter that returns the current angle of a Servo
     * 
     * @return short the current angle
     */
    short getCurrentAngle() const;

    /**
     * @brief function that sets the current angle of a servo
     * 
     * @param anAngle the angle to be set
     */
    void setCurrentAngle(short anAngle);

    /**
     * @brief function that gets the ID of a servo
     * 
     * @return unsigned long the id to return
     */
    unsigned long getId() const;

    /**
     * @brief function that gets the maximum angle a servo is allowed to have
     * 
     * @return short the maximum angle
     */
    short getMaxAngle() const;

    /**
     * @brief function that gets the minimum angle a servo is allowed to have
     * 
     * @return short the minimum angle
     */
    short getMinAngle() const;

  private:
    /** The ID of a servo on the LynxMotion */
    unsigned long id;
    /** The maximum PWM a servo may be send to */
    unsigned long maxPWM;
    /** The maximum angle a servo may be send to */
    short maxAngle;
    /** The minimum PWM a servo must be send to */
    unsigned long minPWM;
    /** the minimum angle a servo must be send to */
    short minAngle;
    /** The current angle a servo has been set to */
    short currentAngle;
};
}
}

#endif //SERVO_HPP_