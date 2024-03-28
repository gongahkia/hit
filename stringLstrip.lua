-- @param string, substring to be trimmed on the left
-- @return sanitised string

function stringLstrip(str, substr)
    if substr then
        local pattern = "^" .. substr .. "*(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^%s*(.-)%s*$")
    end
end
