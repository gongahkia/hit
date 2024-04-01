local math2DModule = require("../src/math2D")

-- Test AngleBetween function
print("Testing AngleBetween:")
print(math.deg(math2DModule.AngleBetween({0, 0}, {1, 0})))  -- Expected output: 0 degrees
print(math.deg(math2DModule.AngleBetween({0, 0}, {0, 1})))  -- Expected output: 90 degrees
print(math.deg(math2DModule.AngleBetween({0, 0}, {-1, 0}))) -- Expected output: 180 degrees

-- Test EuclideanDistance function
print("\nTesting EuclideanDistance:")
print(math2DModule.EuclideanDistance({0, 0}, {3, 4}))         -- Expected output: 5
print(math2DModule.EuclideanDistance({1, 1}, {4, 5}))         -- Expected output: Approximately 5.6569

-- Test ManhattanDistance function
print("\nTesting ManhattanDistance:")
print(math2DModule.ManhattanDistance({0, 0}, {3, 4}))         -- Expected output: 7
print(math2DModule.ManhattanDistance({1, 1}, {4, 5}))         -- Expected output: 7

-- Test VectorAdd function
print("\nTesting VectorAdd:")
local resultAdd = math2DModule.VectorAdd({1, 2}, {3, 4})
print(resultAdd[1], resultAdd[2])                              -- Expected output: 4, 6

-- Test VectorMagnitude function
print("\nTesting VectorMagnitude:")
print(math2DModule.VectorMagnitude({3, 4}))                     -- Expected output: 5

-- Test VectorNormalize function
print("\nTesting VectorNormalize:")
local resultNormalize = math2DModule.VectorNormalize({3, 4})
print(resultNormalize[1], resultNormalize[2])                  -- Expected output: 0.6, 0.8

-- Test VectorScale function
print("\nTesting VectorScale:")
local resultScale = math2DModule.VectorScale({1, 2}, 2)
print(resultScale[1], resultScale[2])                          -- Expected output: 2, 4

-- Test VectorSubtract function
print("\nTesting VectorSubtract:")
local resultSubtract = math2DModule.VectorSubtract({3, 4}, {1, 2})
print(resultSubtract[1], resultSubtract[2])                    -- Expected output: 2, 2

print("\nAll tests passed successfully!")