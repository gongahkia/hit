local queueModule = {}

-- @param nil
-- @return new queue with first and last value
function queueModule.new()
    return {first = 0, last = -1}
end

-- @param queue
-- @return boolean depending on whether queue is empty
function queueModule.isEmpty(queue)
    return queue.first > queue.last
end

-- @param queue, value to be pushed onto queue
-- @return updated queue
function queueModule.push(queue, val)
    local last = queue.last + 1
    queue.last = last
    queue[last] = val
    return queue
end

-- @param queue
-- @return popped value, updated queue
function queueModule.pop(queue)
    if queueModule.isEmpty(queue) then
        error("Queue is empty")
    end
    local first = queue.first
    local val = queue[first]
    queue[first] = nil
    queue.first = first + 1
    return val, queue
end

-- @param queue
-- @return queue size
function queueModule.size(queue)
    return queue.last - queue.first + 1
end

return queueModule