function love.load()
    require 'globals'

    if CONFIG.RUN_TESTS then
        require 'tests'
        love.event.quit()
    end
    
    GlobalEventer:publish(Events.LoadEvent:new())
end