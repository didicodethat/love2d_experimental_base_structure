local Square = class('Square', Base.Model)

function Square:initialize(attributes)
    self.x = attributes.x
    self.y = attributes.y
    self.width = attributes.width
    self.height = attributes.height
end

return Square