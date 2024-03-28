-- @param x-coordinate of the top-left corner of the area, y-coordinate of the top-left corner of the area, area width, area height
-- @return boolean value depending on whether the mouse cursor is within the specified area

function isMouseOver(x, y, width, height)
    local mouseX, mouseY = love.mouse.getPosition()
    return mouseX >= x and mouseX <= x + width and mouseY >= y and mouseY <= y + height
end
