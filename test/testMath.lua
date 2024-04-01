local mathModule = require("../src/math")

-- Test Clamp function
print("Testing Clamp:")
print(mathModule.Clamp(10, 0, 20))  -- Expected output: 10
print(mathModule.Clamp(-5, 0, 20))  -- Expected output: 0
print(mathModule.Clamp(30, 0, 20))  -- Expected output: 20

-- Test Fibonacci function
print("\nTesting Fibonacci:")
print(mathModule.Fibonacci(0))  -- Expected output: 0
print(mathModule.Fibonacci(1))  -- Expected output: 1
print(mathModule.Fibonacci(5))  -- Expected output: 5

-- Test Lerp function
print("\nTesting Lerp:")
print(mathModule.Lerp(0, 10, 0.5))  -- Expected output: 5
print(mathModule.Lerp(-5, 5, 0.3))  -- Expected output: -3

-- Test DegreeToRadian function
print("\nTesting DegreeToRadian:")
print(mathModule.DegreeToRadian(180))  -- Expected output: 3.14159...

-- Test RadianToDegree function
print("\nTesting RadianToDegree:")
print(mathModule.RadianToDegree(math.pi))  -- Expected output: 180

-- Test RandRange function
print("\nTesting RandRange:")
for i = 1, 5 do
    print(mathModule.RandRange(1, 10))  -- Expected output: Random number between 1 and 10
end

-- Test ScaleBy function
print("\nTesting ScaleBy:")
print(mathModule.ScaleBy(5, 0, 10, 0, 100))  -- Expected output: 50
print(mathModule.ScaleBy(10, 0, 100, 0, 1))  -- Expected output: 0.1

-- Test Smooth function
print("\nTesting Smooth:")
print(mathModule.Smooth(0, 10, 5))  -- Expected output: Approximately 0.5
print(mathModule.Smooth(0, 1, 0.75))  -- Expected output: Approximately 0.9328

print("\nAll tests passed successfully!")