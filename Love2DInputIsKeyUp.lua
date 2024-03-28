-- @param specified key to check
-- @return boolean value depending on whether the key is released up

function isKeyUp(key)
    return not love.keyboard.isDown(key)
end