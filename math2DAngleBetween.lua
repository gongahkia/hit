-- @param entity1 table with coordinates {x,y}, entity2 table with coordinates {x,y}
-- @return angle formed between coordinates of both entities

function math2DAngleBetween(ety1, ety2)
    return math.atan2(ety2[2] - ety1[2], ety2[1]- ety1[1])
end