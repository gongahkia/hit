-- @param nil
-- @return text typed by the user since the last frame

function getTypedText()
    return love.textinput.getText()
end