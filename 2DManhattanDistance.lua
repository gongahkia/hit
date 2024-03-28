-- @param entity1 table with coordinates {x,y}, entity2 table with coordinates {x,y}
-- @return manhattan distance between coordinates of both entities

function 2DManhattanDistance(ety1, ety2)
    return math.abs(ety2[1] - ety1[1]) + math.abs(ety2[2] - ety1[2])
end