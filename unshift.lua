-- @param value to be added to start of table
-- @return new table

function unshift(tbl)
    table.insert(tbl, 1, 0)
    return tbl
end