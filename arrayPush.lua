-- @param table, value to be pushed
-- @return new table

function arrayPush(tbl, val)
    table.insert(tbl, val)
    return tbl
end
