-- @param nil
-- @return coordinates of mouse as a table {x,y}

function Love2DInputGetMouseXY()
    return {love.mouse.getX(), love.mouse.getY()}
end