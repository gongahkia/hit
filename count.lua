-- @param table
-- @return table length

function count(tbl)
    local count = 0
    for _ in pairs(tbl) do 
        count = count + 1 
    end
    return count
end