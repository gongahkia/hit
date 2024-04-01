local priorityQueueModule = require("../src/priorities")

-- Test new function
local priorityQueue = priorityQueueModule.new()
print("Testing new function:")
assert(type(priorityQueue) == "table" and #priorityQueue.elements == 0, "Test failed: new function")

-- Test isEmpty function
print("\nTesting isEmpty function:")
assert(priorityQueueModule.isEmpty(priorityQueue) == true, "Test failed: isEmpty function (empty priority queue)")

-- Test push function
print("\nTesting push function:")
priorityQueue = priorityQueueModule.push(priorityQueue, "Task 1", 3)
priorityQueue = priorityQueueModule.push(priorityQueue, "Task 2", 1)
priorityQueue = priorityQueueModule.push(priorityQueue, "Task 3", 2)
assert(#priorityQueue.elements == 3, "Test failed: push function (size)")
assert(priorityQueue.elements[1].val == "Task 2" and priorityQueue.elements[1].priority == 1, "Test failed: push function (priority 1)")
assert(priorityQueue.elements[2].val == "Task 3" and priorityQueue.elements[2].priority == 2, "Test failed: push function (priority 2)")
assert(priorityQueue.elements[3].val == "Task 1" and priorityQueue.elements[3].priority == 3, "Test failed: push function (priority 3)")

-- Test pop function
print("\nTesting pop function:")
local poppedValue, updatedQueue = priorityQueueModule.pop(priorityQueue)
assert(poppedValue == "Task 2", "Test failed: pop function (popped value)")
assert(#updatedQueue.elements == 2, "Test failed: pop function (updated size)")

-- Test peek function
print("\nTesting peek function:")
local topPriorityTask = priorityQueueModule.peek(priorityQueue)
assert(topPriorityTask == "Task 3", "Test failed: peek function")

print("\nAll tests passed successfully!")