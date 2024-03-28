-- @param specified key to check
-- @return boolean value depending on whether the key is pressed down

function Love2DInputIsKeyDown(key)
    return love.keyboard.isDown(key)
end