local linkedListModule = require("../src/links")

-- Node structure for linked list
local Node = linkedListModule.Node

-- Test new function
local linkedList = linkedListModule.new()
print("Testing new function:")
assert(type(linkedList) == "table" and linkedList.head == nil, "Test failed: new function")

-- Test isEmpty function
print("\nTesting isEmpty function:")
assert(linkedListModule.isEmpty(linkedList) == true, "Test failed: isEmpty function (empty linked list)")

-- Test insert function
print("\nTesting insert function:")
linkedList = linkedListModule.insert(linkedList, 10)
linkedList = linkedListModule.insert(linkedList, 20)
linkedList = linkedListModule.insert(linkedList, 30)
assert(linkedList.head.val == 10, "Test failed: insert function (head value)")
assert(linkedList.head.next.val == 20, "Test failed: insert function (second value)")
assert(linkedList.head.next.next.val == 30, "Test failed: insert function (third value)")

-- Test delete function
print("\nTesting delete function:")
linkedList = linkedListModule.delete(linkedList, 20)
assert(linkedList.head.val == 10, "Test failed: delete function (head value)")
assert(linkedList.head.next.val == 30, "Test failed: delete function (second value)")

-- Test search function
print("\nTesting search function:")
assert(linkedListModule.search(linkedList, 10) == true, "Test failed: search function (existing value)")
assert(linkedListModule.search(linkedList, 20) == false, "Test failed: search function (non-existing value)")

print("\nAll tests passed successfully!")