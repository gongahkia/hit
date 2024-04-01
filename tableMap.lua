-- @param function, iterable structure
-- @return transformed iterable structure

function map(func, arr)
    local fin = {}
    for index, val in ipairs(arr) do
        fin[index] = func(val)
    end
    return fin
end