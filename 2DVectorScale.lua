-- @param vector as a table {x,y}, scalar value to scale the vector by
-- @return scaled result vector

function 2DVectorScale(vec, scalar)
    return {vec[1] * scalar, vec[2] * scalar}
end