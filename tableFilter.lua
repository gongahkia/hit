-- @param predicate function, iterable structure
-- @return filtered iterable structure

function filter(predicateFunc, arr)
    local fin = {}
    for _, val in ipairs(arr) do
        if predicateFunc(val) then
            table.insert(fin, val)
        end
    end
    return fin
end