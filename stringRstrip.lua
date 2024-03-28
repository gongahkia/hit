-- @param string, substring to be trimmed on the right
-- @return sanitised string

function stringRstrip(str, substr)
    if substr then
        local pattern = "^(.-)" .. substr .. "*$"
        return str:match(pattern)
    else
        return str:match("^(.-)%s*$")
    end
end
