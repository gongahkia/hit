local stringModule = {}

-- @param string, substring to be trimmed on both sides
-- @return sanitised string
function stringModule.Strip(str, substr)
    if substr then
        local pattern = "^" .. substr .. "*(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^%s*(.-)%s*$"):match("%S.*%S") or ""
    end
end

-- @param string, substring to be trimmed on the left
-- @return sanitised string
function stringModule.Lstrip(str, substr)
    if substr then
        local pattern = "^" .. substr .. "*(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^%s*(.-)%s*$")
    end
end

-- @param string, substring to be trimmed on the right
-- @return sanitised string
function stringModule.Rstrip(str, substr)
    if substr then
        local pattern = "^(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^(.-)%s*$")
    end
end

-- @param string, delimiter
-- @return table of substrings split by specified delimiter
function stringModule.Split(str, delim)
    local fin = {}
    local pattern = string.format("([^%s]+)", delim)
    for word in string.gmatch(str, pattern) do
        table.insert(fin, word)
    end
    return fin
end

return stringModule