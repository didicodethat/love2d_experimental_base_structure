local System = class('System')

function System:exec(event)
    assertHasProperty(self, 'run')
    self:run(event)
end

return System