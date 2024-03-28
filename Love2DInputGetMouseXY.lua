-- @param nil
-- @return coordinates of mouse as a table {x,y}

function getMouseXY()
    return {love.mouse.getX(), love.mouse.getY()}
end