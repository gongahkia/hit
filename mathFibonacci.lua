-- @param specified position in fibonacci sequence
-- @return the nth fibonnaci number

function mathFibonacci(n)
    if n <= 1 then return n end
    return mathFibonacci(n - 1) + mathFibonacci(n - 2)
end