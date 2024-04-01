local Love2DPointInModule = {}

-- @param specified coordinate as a table {x,y}, circle as a table {x,y,radius}
-- @return boolean value depending on whether the specified coordinate is within the circle
function Love2DPointInModule.PointInCircle(point, circle)
    local dx = point.x - circle.x
    local dy = point.y - circle.y
    local distanceSquared = dx^2 + dy^2
    return distanceSquared <= circle.radius^2
end

-- @param specified coordinate as a table {x,y}, rectangle as a table {x,y,width,height}
-- @return boolean value depending on whether the specified coordinate is within the rectangle
function Love2DPointInModule.PointInRectangle(point, rect)
    return point.x >= rect.x and point.x <= rect.x + rect.width and point.y >= rect.y and point.y <= rect.y + rect.height
end

return Love2DPointInModule