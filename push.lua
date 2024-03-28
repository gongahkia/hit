-- @param table, value to be pushed
-- @return new table

function push(tbl, val)
    table.insert(tbl, val)
    return tbl
end
