-- @param nil
-- @return boolean value depending on whether the text input is currently active

function Love2DInputIsTextInputActive()
    return love.keyboard.hasTextInput()
end