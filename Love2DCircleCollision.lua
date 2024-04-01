-- @param circle1 as a table {x,y,radius}, circle2 as a table {x,y,radius}
-- @return boolean value depending on whether circles collide

function 2DCircleCollision(circle1, circle2)
    local dx = circle1.x - circle2.x
    local dy = circle1.y - circle2.y
    local distanceSquared = dx^2 + dy^2
    local combinedRadius = circle1.radius + circle2.radius
    return distanceSquared <= combinedRadius^2
end
