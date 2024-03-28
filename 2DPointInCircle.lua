-- @param specified coordinate as a table {x,y}, circle as a table {x,y,radius}
-- @return boolean value depending on whether the specified coordinate is within the circle

function 2DPointInCircle(point, circle)
    local dx = point.x - circle.x
    local dy = point.y - circle.y
    local distanceSquared = dx^2 + dy^2
    return distanceSquared <= circle.radius^2
end