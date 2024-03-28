-- @param table to be shallow copied
-- @return shallow copy of specified table 

function shallowCopyTable(tbl) 
    local fin = {}
    for key, value in ipairs(tbl) do
        fin[key] = value
    end
    return fin
end
