-- @param start value for interpolation, end value for interpolation, interpolation factor (usually between 0 and 1)
-- @return linearly interpolated value between a and b based on t

function mathLerp(a, b, t)
    return a + (b - a) * t
end