-- @param 2D vector as a table {x,y}
-- @return normalized 2D vector as a table {x/magnitude,y/magnitude}

function math2DVectorNormalize(vec)
    local magnitude = vectorMagnitude(vec)
    if magnitude ~= 0 then
        return {vec[1]/magnitude, vec[2]/magnitude}
    else
        return {0, 0}
    end
end