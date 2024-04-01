local queueModule = require("../src/queues")

-- Test new function
local queue = queueModule.new()
print("Testing new function:")
assert(type(queue) == "table" and queue.first == 0 and queue.last == -1, "Test failed: new function")

-- Test isEmpty function
print("\nTesting isEmpty function:")
assert(queueModule.isEmpty(queue) == true, "Test failed: isEmpty function (empty queue)")

-- Test push function
print("\nTesting push function:")
queue = queueModule.push(queue, 10)
queue = queueModule.push(queue, 20)
queue = queueModule.push(queue, 30)
assert(queue.last == 2, "Test failed: push function (last index)")
assert(queue[1] == 10 and queue[2] == 20 and queue[3] == 30, "Test failed: push function (values)")

-- Test pop function
print("\nTesting pop function:")
local poppedValue, updatedQueue = queueModule.pop(queue)
assert(poppedValue == 10, "Test failed: pop function (popped value)")
assert(updatedQueue.first == 1 and updatedQueue[1] == 20 and updatedQueue[2] == 30, "Test failed: pop function (updated queue)")

-- Test size function
print("\nTesting size function:")
local queueSize = queueModule.size(queue)
assert(queueSize == 2, "Test failed: size function")

print("\nAll tests passed successfully!")