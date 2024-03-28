-- @param table
-- @return first element of table

function shift(tbl)
    table.remove(tbl, 1)
    return tbl
end