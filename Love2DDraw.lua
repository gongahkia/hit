local Love2DDrawModule = {}

-- @param x-coordinate of the center of the circle, y-coordinate of the center of the circle, circle radius, circle color
-- @return nil
function Love2DDrawModule.DrawCircle(x, y, radius, color)
    love.graphics.setColor(color)
    love.graphics.circle("fill", x, y, radius)
end

-- @param x-coordinate of the top-left corner of the rectangle, y-coordinate of the top-left corner of the rectangle, rectangle width, rectangle height, rectangle color
-- @return nil
function Love2DDrawModule.DrawRectangle(x, y, width, height, color)
    love.graphics.setColor(color)
    love.graphics.rectangle("fill", x, y, width, height)
end

-- @param text to be drawn, x-coordinate of the top-left corner of the text, y-coordinate of the top-left corner of the text, text color
-- @return nil
function Love2DDrawModule.DrawText(text, x, y, color)
    love.graphics.setColor(color) 
    love.graphics.print(text, x, y)
end

return Love2DDrawModule