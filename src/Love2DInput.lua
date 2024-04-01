local Love2DInputModule = {}

-- @param nil
-- @return coordinates of mouse as a table {x,y}
function Love2DInputModule.GetMouseXY()
    return {love.mouse.getX(), love.mouse.getY()}
end

-- @param nil
-- @return text typed by the user since the last frame
function Love2DInputModule.GetTypedText()
    return love.textinput.getText()
end

-- @param specified key to check
-- @return boolean value depending on whether the key is pressed down
function Love2DInputModule.IsKeyDown(key)
    return love.keyboard.isDown(key)
end

-- @param specified key to check
-- @return boolean value depending on whether the key is released up
function Love2DInputModule.IsKeyUp(key)
    return not love.keyboard.isDown(key)
end

-- @param x-coordinate of the top-left corner of the area, y-coordinate of the top-left corner of the area, area width, area height
-- @return boolean value depending on whether the mouse cursor is within the specified area
function Love2DInputModule.IsMouseOver(x, y, width, height)
    local mouseX, mouseY = love.mouse.getPosition()
    return mouseX >= x and mouseX <= x + width and mouseY >= y and mouseY <= y + height
end

-- @param nil
-- @return boolean value depending on whether the text input is currently active
function Love2DInputModule.IsTextInputActive()
    return love.keyboard.hasTextInput()
end

-- @param specified key to check
-- @return boolean value depending on whether the key is pressed down in the last frame
function Love2DInputModule.WasKeyPressed(key)
    return love.keyboard.wasPressed(key)
end

-- @param specified key to check
-- @return boolean value depending on whether the key is released up in the last frame
function Love2DInputModule.WasKeyReleased(key)
    return love.keyboard.wasReleased(key)
end

-- @param specified mouse button to check (1 for left, 2 for right, 3 for middle)
-- @return boolean value depending on whether the specified mouse button was pressed down in the last frame
function Love2DInputModule.WasMousePressed(button)
    return love.mouse.wasPressed(button)
end

-- @param specified mouse button to check (1 for left, 2 for right, 3 for middle)
-- @return boolean value depending on whether the specified mouse button was released up in the last frame
function Love2DInputModule.WasMouseReleased(button)
    return love.mouse.wasReleased(button)
end

return Love2DInputModule