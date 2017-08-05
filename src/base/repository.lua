local Repository = class('Repository')

function Repository:initialize(model)
    self.model = model
    self.actualIndex = 0
    self.collection = collect({})
end

function Repository:nextIndex()
    self.actualIndex = self.actualIndex +  1
    return self.actualIndex
end

function Repository:store(object)
    assertInstanceOf(object, self.model)
    assertInstanceOf(object, Base.Model)

    object:setId(self:nextIndex())

    self.collection:append(object)
end

function Repository:create(attributes)
    newItem = self.model:new(attributes)
    self:store(newItem)
    return newItem
end

return Repository