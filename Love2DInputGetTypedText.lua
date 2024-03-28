-- @param nil
-- @return text typed by the user since the last frame

function Love2DInputGetTypedText()
    return love.textinput.getText()
end