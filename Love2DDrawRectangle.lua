-- @param x-coordinate of the top-left corner of the rectangle, y-coordinate of the top-left corner of the rectangle, rectangle width, rectangle height, rectangle color
-- @return nil

function Love2DDrawRectangle(x, y, width, height, color)
    love.graphics.setColor(color)
    love.graphics.rectangle("fill", x, y, width, height)
end
