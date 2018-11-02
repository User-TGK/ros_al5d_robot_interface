#include "Servo.hpp"

namespace RobotInterface
{
namespace HighLevel
{

Servo::Servo()
{
}

Servo::Servo(unsigned long anId, unsigned long aMaxPWM, short aMaxAngle, unsigned long aMinPWM, short aMinAngle)
    : id(anId), maxPWM(aMaxPWM), maxAngle(aMaxAngle), minPWM(aMinPWM), minAngle(aMinAngle), currentAngle(0)
{
}

Servo::Servo(const Servo &rhs)
    : id(rhs.id), maxPWM(rhs.maxPWM), maxAngle(rhs.maxAngle), minPWM(rhs.minPWM), minAngle(rhs.minAngle), currentAngle(rhs.currentAngle)
{
}

Servo::~Servo()
{
}

unsigned long Servo::convertToPwm(short anAngle) const
{
    return ((anAngle - minAngle) * (maxPWM - minPWM) / (maxAngle - minAngle) + minPWM);
}

short Servo::convertToAngle(unsigned long aPWM)
{
    return ((aPWM - minPWM) * (maxAngle - minAngle) / (maxPWM - minPWM) + minAngle);
}

Servo &Servo::operator=(const Servo &rhs)
{
    if (&rhs != this)
    {
        id = rhs.id;
        maxPWM = rhs.maxPWM;
        maxAngle = rhs.maxAngle;
        minPWM = rhs.minPWM;
        minAngle = rhs.minAngle;
        currentAngle = rhs.currentAngle;
    }
    return *this;
}

short Servo::getCurrentAngle() const
{
    return currentAngle;
}

void Servo::setCurrentAngle(short anAngle)
{
    currentAngle = anAngle;
}

unsigned long Servo::getId() const
{
    return id;
}
short Servo::getMaxAngle() const
{
    return maxAngle;
}
short Servo::getMinAngle() const
{
    if (this->id == 1)
    {
        return -30;
    }
    return minAngle;
}

}
}