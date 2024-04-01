-- @param 2D vector1 as a table {x,y}, 2D vector2 as a table {x,y}, 
-- @return added result vector

function math2DVectorAdd(vec1, vec2)
    return {vec1[1] + vec2[1], vec1[2] + vec2[2]}
end