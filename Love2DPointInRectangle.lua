-- @param specified coordinate as a table {x,y}, rectangle as a table {x,y,width,height}
-- @return boolean value depending on whether the specified coordinate is within the rectangle

function 2DPointInRectangle(point, rect)
    return point.x >= rect.x and point.x <= rect.x + rect.width and point.y >= rect.y and point.y <= rect.y + rect.height
end
