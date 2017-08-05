
function expect(name, assertion)
    if assertion then
        print(wrapWithColor('PASSED: ', 'green') .. name)
    else
        print(wrapWithColor('FAILED: ', 'red') .. name)
    end
end

function testTitle(name)
    print("")
    print("================== " .. name .. " ==================")
    print("")
end