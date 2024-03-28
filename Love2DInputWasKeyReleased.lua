-- @param specified key to check
-- @return boolean value depending on whether the key is released up in the last frame

function Love2DInputWasKeyReleased(key)
    return love.keyboard.wasReleased(key)
end
