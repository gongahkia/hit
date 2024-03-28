-- @param string, delimiter
-- @return table of substrings split by specified delimiter

function split(str, delim)
    local fin = {}
    local pattern = string.format("([^%s]+)", delim)
    for word in string.gmatch(str, pattern) do
        table.insert(fin, word)
    end
    return fin
end