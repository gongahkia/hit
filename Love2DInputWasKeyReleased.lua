-- @param specified key to check
-- @return boolean value depending on whether the key is released up in the last frame

function wasKeyReleased(key)
    return love.keyboard.wasReleased(key)
end
