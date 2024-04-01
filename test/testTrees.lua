local binarySearchTreeModule = require("../src/trees")

-- helper function
local function arraysEqual(arr1, arr2)
    if #arr1 ~= #arr2 then
        return false
    end
    for i = 1, #arr1 do
        if arr1[i] ~= arr2[i] then
            return false
        end
    end
    return true
end

-- Test new function
local bst = binarySearchTreeModule.new()
print("Testing new function:")
assert(type(bst) == "table" and bst.root == nil, "Test failed: new function")

-- Test insert function
print("\nTesting insert function:")
bst = binarySearchTreeModule.insert(bst, 10)
bst = binarySearchTreeModule.insert(bst, 5)
bst = binarySearchTreeModule.insert(bst, 15)
bst = binarySearchTreeModule.insert(bst, 7)
bst = binarySearchTreeModule.insert(bst, 12)
bst = binarySearchTreeModule.insert(bst, 3)
bst = binarySearchTreeModule.insert(bst, 17)
assert(bst.root.val == 10, "Test failed: insert function (root)")
assert(bst.root.left.val == 5, "Test failed: insert function (left)")
assert(bst.root.right.val == 15, "Test failed: insert function (right)")
assert(bst.root.left.right.val == 7, "Test failed: insert function (left.right)")
assert(bst.root.right.left.val == 12, "Test failed: insert function (right.left)")
assert(bst.root.left.left.val == 3, "Test failed: insert function (left.left)")
assert(bst.root.right.right.val == 17, "Test failed: insert function (right.right)")

-- Test search function
print("\nTesting search function:")
assert(binarySearchTreeModule.search(bst, 10) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 5) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 15) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 7) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 12) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 3) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 17) == true, "Test failed: search function (existing)")
assert(binarySearchTreeModule.search(bst, 100) == false, "Test failed: search function (non-existing)")

-- Test inorderTraversal function
print("\nTesting inorderTraversal function:")
local expectedInorder = {3, 5, 7, 10, 12, 15, 17}
local actualInorder = binarySearchTreeModule.inorderTraversal(bst)
assert(arraysEqual(expectedInorder, actualInorder), "Test failed: inorderTraversal function")

print("\nAll tests passed successfully!")