-- @param lower bound of interpolation range, upper bound of interpolation range, value to be interpolated
-- @return interpolated value 

function mathSmooth(low, upp, val)
    val = clamp((val - low) / (upp - low), 0, 1)
    return val * val * (3 - 2 * val)
end