#ifndef GOAL_QUEUE_HANDLER_HPP_
#define GOAL_QUEUE_HANDLER_HPP_

#include <queue>
#include <string>
#include <map>

#include <robot_interface/PositionAction.h>

namespace MotionPlanner
{

/**
 * @brief struct that contains raw goals (can easily be queued)
 */
struct rawGoal
{
    /** True of the goal is preprogrammed, false if not */
    bool preProgrammed;
    /** Mapping between indexes and positions */
    std::map<unsigned long, short> anIndexAndPosition;
    /** The maximum time a goal may take */
    long long maxTime;
    /** The name of the goal */
    std::string name;
};

/**
 * @brief Class that handles the queue on the server side
 */
class GoalQueueHandler
{
  public:
    /**
     * @brief Construct a new Goal Queue Handler object 
     */
    GoalQueueHandler();

    /**
     * @brief Destroy the Goal Queue Handler object
     */
    ~GoalQueueHandler();

    /**
    * @brief function that will try to set a goal based on the commandline arguments
    * 
    * @param argc the number of arguments given by the user
    * @param argv array with the arguments
    * @exception if no goal could be created based on the commandline arguments
    */
    void addRawGoal(int argc, char *argv[]);

    /**
     * @brief function that adds a goal to the queue
     * 
     * @param aRawGoal the goal to be added
     */
    void addGoal(const rawGoal &aRawGoal);

    /**
     * @brief Get the Queue object
     * 
     * @return std::queue<rawGoal> 
     */
    std::queue<rawGoal> getQueue() const;

    /**
     * @brief Get the Next Goal object
     * 
     * @return robot_interface::PositionGoal 
     */
    robot_interface::PositionGoal getNextGoal();

    /**
     * @brief Function that empties the current queue
     * 
     */
    void clear();

  private:
    /**
     * @brief function that converts a queued rawGoal to a robot_interface::PositionGoal
     * 
     * @param aRawGoal the rawGoal to be converted
     * @return robot_interface::PositionGoal the converted goal
     */
    robot_interface::PositionGoal toGoal(const rawGoal &aRawGoal);

    /** std::queue that contains all queued goals */
    std::queue<rawGoal> goalQueue;
};
}
#endif //GOAL_QUEUE_HANDLER_HPP_