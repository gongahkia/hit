-- @param x-coordinate of the center of the circle, y-coordinate of the center of the circle, circle radius, circle color
-- @return nil

function Love2DDrawCircle(x, y, radius, color)
    love.graphics.setColor(color)
    love.graphics.circle("fill", x, y, radius)
end