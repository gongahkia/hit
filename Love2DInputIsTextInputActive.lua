-- @param nil
-- @return boolean value depending on whether the text input is currently active

function isTextInputActive()
    return love.keyboard.hasTextInput()
end