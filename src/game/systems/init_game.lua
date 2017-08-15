local InitGame = class('InitGame', Base.System)

function InitGame:run()
    local squareInitializer = {}
    squareInitializer.x = 0
    squareInitializer.y = 0
    squareInitializer.width = 10
    squareInitializer.height = 10
    Game.Repositories:create(squareInitializer)
    squareInitializer.x = 10
    squareInitializer.y = 10
    Game.Repositories:create(squareInitializer)
    squareInitializer.x = 30
    squareInitializer.y = 15
    Game.Repositories:create(squareInitializer)
    squareInitializer.x = 50
    squareInitializer.y = 30
    Game.Repositories:create(squareInitializer)
    squareInitializer.x = 22
    squareInitializer.y = 05
    Game.Repositories:create(squareInitializer)
end

return InitGame