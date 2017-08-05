local ExampleModel = class('ExampleModel', Base.Model)
local testRepo = Base.Repository:new(ExampleModel)

function ExampleModel:initialize(arg)
    self.x = arg.x
    self.y = arg.y
end

local exampleArg = {
    x = 10,
    y = 11
}

testTitle('Base.Repository')

expect(
    'Base.Repository:nextIndex - Should increase on every call',
    testRepo:nextIndex() == 1 and
    testRepo:nextIndex() == 2 and
    testRepo:nextIndex() == 3
)

testRepo = Base.Repository:new(ExampleModel)

local example = testRepo:create(exampleArg)

expect(
    'Base.Repository:create - should return a instance of the Main Model',
    example:isInstanceOf(ExampleModel)
)

expect(
    'Base.Repository:create - should add ExampleModel to the collection',
    testRepo.collection:filter(function(k, v) 
        return v == example
    end):count() == 1
)