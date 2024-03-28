-- @param string, substring to be trimmed
-- @return sanitised string

function strip(str, substr)
    if substr then
        local pattern = "^" .. substr .. "*(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^%s*(.-)%s*$")
    end
end