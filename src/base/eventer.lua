local Eventer = class('Eventer')

function Eventer:initialize()
    self.eventListeners = {}
end

function Eventer:getOrInitListenerCollection(eventClass)
    if self.eventListeners[eventClass.name] then
        return self.eventListeners[eventClass.name]
    else
        self.eventListeners[eventClass.name] = collect({})
        return self.eventListeners[eventClass.name]
    end
end

function Eventer:subscribe(eventClass, listener, method, order)
    method = method or 'exec'
    assertHasProperty(listener, method)

    local listenerCollection = self:getOrInitListenerCollection(eventClass)
    local toInsert = {listener, method}

    if order == nil then
        listenerCollection:append(toInsert)
    else
        listenerCollection:insert(toInsert, order)
    end

    return self
end

function Eventer:unsubscribe(eventClass, listener)
    if self.eventListeners[eventClass.name] then
        self.eventListeners[eventClass.name] = self.eventListeners[eventClass.name]
            :filter(function(k, _listener)
                return _listener[1] ~= listener
            end)
    end

    return self
end

function Eventer:publish(event)
    local listeners = self.eventListeners[event.class.name]

    if listeners then
        local list = listeners:all()
        local i = 1
        local listener
        local method

        for k, v in pairs(list) do
            listener = v[1]
            method = v[2]
            listener[method](listener, event)
        end
    end
    
    return self
end

return Eventer