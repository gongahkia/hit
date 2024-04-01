local priorityQueueModule = {}

-- @param nil
-- @return empty priority queue
function priorityQueueModule.new()
    return {elements = {}}
end

-- @param priority queue
-- @return boolean depending on whether priority queue empty
function priorityQueueModule.isEmpty(queue)
    return #queue.elements == 0
end

-- @param priority queue, value to be pushed, value's priority
-- @return updated priority queue
function priorityQueueModule.push(queue, val, priority)
    local element = {val = val, priority = priority}
    table.insert(queue.elements, element)
    table.sort(queue.elements, function(a, b) return a.priority > b.priority end)
    return queue
end

-- @param priority queue
-- @return popped value, updated priority queue
function priorityQueueModule.pop(queue)
    if priorityQueueModule.isEmpty(queue) then
        error("Priority queue is empty")
    end
    local poppedVal = table.remove(queue.elements, 1).val
    return poppedVal, queue
end

-- @param priority queue
-- @return value of highest priority
function priorityQueueModule.peek(queue)
    if priorityQueueModule.isEmpty(queue) then
        error("Priority queue is empty")
    end
    return queue[1].val
end

return priorityQueueModule
