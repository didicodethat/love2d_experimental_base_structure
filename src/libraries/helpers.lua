local trueOrNil = require('src.libraries.assertions').trueOrNil
local helpers = {}

function helpers.dd(message, quit)
    print(serpent.block(message))
    print(debug.traceback())
    if trueOrNil(quit) then
        os.exit()
    end
end

function helpers.wrapWithColor(text, colorName)
    return termColors[colorName] .. text .. termColors.reset
end

function helpers.bind(object, fn, arg)
    return function()
        return object[fn](object, arg)
    end
end

return helpers