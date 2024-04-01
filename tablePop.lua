-- @param table
-- @return last value of table

function arrayPop(tbl)
    val = table.remove(tbl)
    return val
end