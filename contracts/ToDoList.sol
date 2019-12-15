  
pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );

  constructor() public {
    // Default task
    createTask("This is a default task");
  }

  function createTask(string memory _content) public {
    // Increment task count
    taskCount ++;
    // Create and map new task
    tasks[taskCount] = Task(taskCount, _content, false);
    // Trigger an event to indicate that a new task was created
    emit TaskCreated(taskCount, _content, false);
  }

  function toggleCompleted(uint _id) public {
    // Fetch the task using the id
    Task memory _task = tasks[_id];
    // Toggle the boolean value of the variable 'completed'
    _task.completed = !_task.completed;
    // Update the task and store it back to the tasks map
    tasks[_id] = _task;
    // Trigger an even to indicate that task was completed
    emit TaskCompleted(_id, _task.completed);
  }

}