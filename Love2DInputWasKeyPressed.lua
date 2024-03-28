-- @param specified key to check
-- @return boolean value depending on whether the key is pressed down in the last frame

function wasKeyPressed(key)
    return love.keyboard.wasPressed(key)
end
