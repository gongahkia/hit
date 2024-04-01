local tableModule = require("../src/tables")

-- Test Count function
print("Testing Count:")
local tbl = {1, 2, 3, 4}
print(tableModule.Count(tbl))  -- Expected output: 4

-- Test Pop function
print("\nTesting Pop:")
local poppedValue = tableModule.Pop(tbl)
print(poppedValue)  -- Expected output: 4
print(tableModule.Count(tbl))  -- Expected output: 3

-- Test Push function
print("\nTesting Push:")
tableModule.Push(tbl, 5)
print(tableModule.Count(tbl))  -- Expected output: 4
print(tbl[4])  -- Expected output: 5

-- Test ShallowCopy function
print("\nTesting ShallowCopy:")
local copiedTable = tableModule.ShallowCopy(tbl)
print(tableModule.Count(copiedTable))  -- Expected output: 4

-- Test Shift function
print("\nTesting Shift:")
local shiftedValue = tableModule.Shift(tbl)
print(shiftedValue[1])  -- Expected output: 2
print(tableModule.Count(tbl))  -- Expected output: 3

-- Test Unshift function
print("\nTesting Unshift:")
tableModule.Unshift(tbl)
print(tbl[1])  -- Expected output: 0
print(tableModule.Count(tbl))  -- Expected output: 4

-- Test Map function
print("\nTesting Map:")
local function double(val) return val * 2 end
local mappedTable = tableModule.Map(double, tbl)
for _, v in ipairs(mappedTable) do
    print(v)  -- Expected output: 0, 2, 4, 10
end

-- Test Filter function
print("\nTesting Filter:")
local function isEven(val) return val % 2 == 0 end
local filteredTable = tableModule.Filter(isEven, tbl)
for _, v in ipairs(filteredTable) do
    print(v)  -- Expected output: 0, 2, 4
end

-- Test Reduce function
print("\nTesting Reduce:")
local function sum(a, b) return a + b end
local reducedValue = tableModule.Reduce(sum, tbl)
print(reducedValue)  -- Expected output: 6

print("\nAll tests passed successfully!")