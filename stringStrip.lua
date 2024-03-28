-- @param string, substring to be trimmed on both sides
-- @return sanitised string

function stringStrip(str, substr)
    if substr then
        local pattern = "^" .. substr .. "*(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^%s*(.-)%s*$"):match("%S.*%S") or ""
    end
end