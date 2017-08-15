local SquareRenderer = class('SquareRenderer', Base.Renderer)
local SquareRepository = Game.Repositories.SquareRepository

local renderEachSquare = function(square)
    love.graphics.rectangle(
        'fill', 
        square.x, 
        square.y, 
        square.width, 
        square.height
    )
end

function SquareRenderer:render()
    SquareRepository.collection:each(renderEachSquare)
end

return SquareRenderer