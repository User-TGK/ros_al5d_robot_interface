#include "GoalQueueHandler.hpp"

namespace MotionPlanner
{
   
const unsigned short NROFDEMOPARAMETERS = 2;
const unsigned short NROFPREPRPARAMETERS = 3;
const unsigned short MINNROFCUSTOMPARAMETERS = 4;    

GoalQueueHandler::GoalQueueHandler()
{
}

GoalQueueHandler::~GoalQueueHandler()
{
}

bool isNumber(const std::string& s)
{    if (!s.find("-"))
    {
        return true;
    }
    return !s.empty() && std::find_if(s.begin(), 
        s.end(), [](char c) { return !std::isdigit(c); }) == s.end();
}

void GoalQueueHandler::addRawGoal(int argc, char* argv[])
{
    rawGoal newGoal;
    if (argc == NROFPREPRPARAMETERS)
    {
        newGoal.preProgrammed = true;
        newGoal.name = std::string(argv[1]);
        newGoal.maxTime = std::atoi(argv[2]);
    }
    else if (argc >= MINNROFCUSTOMPARAMETERS)
    {
        std::map<unsigned long, short> indexAndPosition;

        for (unsigned long i = 1; i < (argc -2); i +=2)
        {
            // Check if all arguments are numbers
            if (!isNumber(argv[i]) || !isNumber(argv[i + 1]))
            {
                throw std::string("Non-numeric characters aren't allowed.");
            }
            indexAndPosition[std::atoi(argv[i])] = std::atoi(argv[i + 1]);
        }
        if (!isNumber(argv[argc - 1])) { throw std::string("Non-numeric characters aren't allowed.");}
        
        newGoal.preProgrammed = false;
        newGoal.anIndexAndPosition = indexAndPosition;
        newGoal.maxTime = std::atoi(argv[argc - 1]);
    }
    else
    {
        throw std::string("INVALID-GOAL.");
    }
    this->goalQueue.push(newGoal);
}

void GoalQueueHandler::addGoal(const rawGoal& aRawGoal)
{
    this->goalQueue.push(aRawGoal);
}

std::queue<rawGoal> GoalQueueHandler::getQueue() const
{
    return this->goalQueue;
}

robot_interface::PositionGoal GoalQueueHandler::getNextGoal()
{
    robot_interface::PositionGoal newGoal = toGoal(goalQueue.front());
    goalQueue.pop();
    return newGoal;
}

robot_interface::PositionGoal GoalQueueHandler::toGoal(const rawGoal& aRawGoal)
{
    robot_interface::PositionGoal newGoal;
    if (aRawGoal.preProgrammed)
    {
        newGoal.preProgrammed = true;
        newGoal.name = aRawGoal.name;
    }
    else if (!aRawGoal.preProgrammed)
    {
        for (const auto& element : aRawGoal.anIndexAndPosition)
        {
            newGoal.id.push_back(element.first);
            newGoal.position.push_back(element.second);
        }
        newGoal.preProgrammed = false;
    }
    newGoal.maxTime = aRawGoal.maxTime;
    return newGoal;
}

void GoalQueueHandler::clear()
{
    while (!goalQueue.empty())
    {
        goalQueue.pop();
    }
}

}