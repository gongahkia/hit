local stringModule = require("../src/stringify")

-- Test Strip function
print("Testing Strip:")
print(stringModule.Strip("   Hello, world!   "))  -- Expected output: "Hello, world!"
print(stringModule.Strip("###watermelon###", "#"))  -- Expected output: "watermelon"

-- Test Lstrip function
print("\nTesting Lstrip:")
print(stringModule.Lstrip("   Hello, world!   "))  -- Expected output: "Hello, world!   "
print(stringModule.Lstrip("###watermelon###", "#"))  -- Expected output: "watermelon###"

-- Test Rstrip function
print("\nTesting Rstrip:")
print(stringModule.Rstrip("   Hello, world!   "))  -- Expected output: "   Hello, world!"
print(stringModule.Rstrip("###watermelon###", "#"))  -- Expected output: "###watermelon"

-- Test Split function
print("\nTesting Split:")
local resultSplit = stringModule.Split("apple,banana,cherry", ",")
for _, word in ipairs(resultSplit) do
    print(word)  -- Expected output: "apple", "banana", "cherry"
end

print("\nAll tests passed successfully!")