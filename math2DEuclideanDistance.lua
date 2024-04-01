-- @param entity1 table with coordinates {x,y}, entity2 table with coordinates {x,y}
-- @return euclidean straight-line distance between coordinates of both entities

function math2DEuclideanDistance(ety1, ety2)
    return ((ety2[1]-ety1[1])^2 + (ety2[2]-ety1[2])^2)^0.5
end