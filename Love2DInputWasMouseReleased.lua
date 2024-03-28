-- @param specified mouse button to check (1 for left, 2 for right, 3 for middle)
-- @return boolean value depending on whether the specified mouse button was released up in the last frame

function wasMouseReleased(button)
    return love.mouse.wasReleased(button)
end
