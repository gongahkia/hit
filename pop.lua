-- @param table
-- @return last value of table

function pop(tbl)
    val = table.remove(tbl)
    return val
end