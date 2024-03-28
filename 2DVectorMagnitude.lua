-- @param 2D vector as a table {x,y}
-- @return magnitude of the vector as an integer

function 2DVectorMagnitude(vec)
    return math.sqrt(vec[1]^2 + vec[2]^2)
end