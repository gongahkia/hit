-- @param table
-- @return first element of table

function arrayShift(tbl)
    table.remove(tbl, 1)
    return tbl
end