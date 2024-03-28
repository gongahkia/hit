-- @param aggregate function, iterable structure
-- @return single element

function reduce(aggFunc, arr)
    local fin = arr[1]
    for i = 2, #arr do
        fin = aggFunc(fin, arr[i])
    end
    return fin
end