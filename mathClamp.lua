-- @param specified value to be clamped, minimum value of the clamp range, maximum value of the clamp range
-- @return clamped value within the specified range

function mathClamp(value, min, max)
    return math.min(math.max(value, min), max)
end