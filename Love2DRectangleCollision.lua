-- @param rectangle1 as a table {x,y,width,height}, rectangle2 as a table {x,y,width,height}
-- @return boolean value depending on whether rectangles collide

function 2DRectangleCollision(rect1, rect2)
    local left1, right1, top1, bottom1 = rect1.x, rect1.x + rect1.width, rect1.y, rect1.y + rect1.height
    local left2, right2, top2, bottom2 = rect2.x, rect2.x + rect2.width, rect2.y, rect2.y + rect2.height
    return not (right1 < left2 or left1 > right2 or bottom1 < top2 or top1 > bottom2)
end
