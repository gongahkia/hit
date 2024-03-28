-- @param specified mouse button to check (1 for left, 2 for right, 3 for middle)
-- @return boolean value depending on whether the specified mouse button was pressed down in the last frame

function wasMousePressed(button)
    return love.mouse.wasPressed(button)
end