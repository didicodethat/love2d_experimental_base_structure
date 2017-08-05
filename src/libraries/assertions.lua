local assertions = {}

function assertions.trueOrNil(value)
    return (value or value == nil)
end

function assertions.assertHasProperty(object, methodName)
    assert(
        object[methodName],
        'Method ' .. methodName .. ' should be defined'
    )
end

function assertions.assertInstanceOf(object, class)
    assert(
        object:isInstanceOf(class), 
        'Object must be instance of: ' .. class.name ..
        ', but `' .. object.class.name .. '` was given'
    )
end

return assertions