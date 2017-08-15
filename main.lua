local frameEvent
local drawEvent

function love.load()
    require 'globals'

    if CONFIG.RUN_TESTS then
        require 'tests'
        love.event.quit()
    end

    -- Init Event Objects
    frameEvent = Game.Events.FrameEvent:new()
    drawEvent = Game.Events.DrawEvent:new()

    Game.GlobalEventer:publish(Events.LoadEvent:new())
end

function love.update(dt)
    frameEvent.dt = dt
    Game.GlobalEventer:publish(frameEvent)
end

function love.draw()
    Game.GlobalEventer:publish(drawEvent)
end