-- @param text to be drawn, x-coordinate of the top-left corner of the text, y-coordinate of the top-left corner of the text, text color
-- @return nil

function Love2DDrawText(text, x, y, color)
    love.graphics.setColor(color) 
    love.graphics.print(text, x, y)
end