-- @param value to be remapped, lower bound of original range, upper bound of original range, lower bound of target range, upper bound of target range
-- @return value remapped within target range.

function mathScaleBy(val, fromMin, fromMax, toMin, toMax)
    return toMin+ (toMax - toMin) * ((val - fromMin) / (fromMax- fromMin))
end
