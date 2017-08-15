local GlobalEventer = Base.Eventer:new()

-- Initialize objects here
local squareRenderer = Game.Renderers.SquareRenderer:new()


-- Subscribe all the events here
GlobalEventer:subscribe(Game.Events.DrawEvent, squareRenderer)

return GlobalEventer