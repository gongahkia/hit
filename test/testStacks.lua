local stackModule = require("../src/stacks")

-- Test new function
local stack = stackModule.new()
print("Testing new function:")
assert(type(stack) == "table" and #stack == 0, "Test failed: new function")

-- Test isEmpty function
print("\nTesting isEmpty function:")
assert(stackModule.isEmpty(stack) == true, "Test failed: isEmpty function (empty stack)")

-- Test push function
print("\nTesting push function:")
stack = stackModule.push(stack, 10)
stack = stackModule.push(stack, 20)
stack = stackModule.push(stack, 30)
assert(#stack == 3, "Test failed: push function (size)")
assert(stack[#stack] == 30, "Test failed: push function (top element)")

-- Test pop function
print("\nTesting pop function:")
local poppedValue, updatedStack = stackModule.pop(stack)
assert(poppedValue == 30, "Test failed: pop function (popped value)")
assert(#updatedStack == 2, "Test failed: pop function (size)")

-- Test peek function
print("\nTesting peek function:")
local topElement = stackModule.peek(stack)
assert(topElement == 20, "Test failed: peek function")

-- Test size function
print("\nTesting size function:")
local stackSize = stackModule.size(stack)
assert(stackSize == 2, "Test failed: size function")

print("\nAll tests passed successfully!")