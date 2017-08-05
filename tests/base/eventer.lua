local TestEventer = Base.Eventer:new()

local exampleEvent = {
    name = 'exampleEvent',
    class = 'exampleEvent'
}

local exampleListener = {
    exec = function(self, arg)
        self.listenerHasRun = true
        self.listenerArg = arg
    end
}

local exampleListener2 = {
    randomMethod = function(self, arg)
        self.listenerHasRun = true
        self.listenerArg = arg
    end
}

testTitle('Base.Eventer')

TestEventer:subscribe(exampleEvent, exampleListener)
local listeners = TestEventer.eventListeners['exampleEvent']

expect(
    'Base.Eventer:subscribe - should add listener to the listeners', 
    listeners:isNotEmpty()
)

TestEventer:subscribe(exampleEvent, exampleListener2, 'randomMethod')
TestEventer:publish(exampleEvent)

expect(
    'Base.Eventer:publish - should call exec on listeners 1', 
    exampleListener.listenerHasRun
)

expect(
    'Base.Eventer:publish - should call exec on listeners 2', 
    exampleListener.listenerHasRun
)

expect(
    'Base.Eventer:publish - should call `exec` with the right argument on listener 1', 
    exampleListener.listenerArg == exampleEvent
)

expect(
    'Base.Eventer:publish - should call `randomMethod` with the right argument on listener 2', 
    exampleListener2.listenerArg == exampleEvent
)

exampleListener2.listenerHasRun = false
TestEventer:unsubscribe(exampleEvent, exampleListener2)
TestEventer:publish(exampleEvent)

expect(
    'Base.Eventer:unsubscribe - listener should not be called on :publish',
    (exampleListener2.listenerHasRun == false)
)

