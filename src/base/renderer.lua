local Renderer = class('Renderer')

function Renderer:exec(event)
    assertHasProperty(self, 'render')
    self:render(event)
end

return Renderer