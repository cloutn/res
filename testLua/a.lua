
print("==================a.lua==================")


lc:setPos(lc:getPos())

print("lua  " .. lc:f0())
lc:f0v()

print("lua  " .. lc:f1("hello cpp!"))
lc:f1v(222);

print("lua  " .. lc:f2(1, 2))
lc:f2v(223, 224);

testabc(33, "abc")

local za1, za2 = lc:luaMemberFunction(22, 11)
print("lua  za1 = " .. za1 .. "  za2 = " .. za2)

function lua_test()
	print("lua  lua_test");
end

function lua_return_int()
	return 66;
end

function lua_param1(i)
	print("lua  lua_param1 i = " .. i)
end

function lua_param2(i1, i2)
	print("lua  lua_param2 i1 = " .. i1 .. " i2 = " .. i2)
end


function lua_param3(i1, i2, i3)
	print("lua  lua_param3 i1 = " .. i1 .. " i2 = " .. i2  .. " i3 = " .. i3)
end


function lua_param4(i1, i2, i3, i4)
	print("lua  lua_param4 i1 = " .. i1 .. " i2 = " .. i2  .. " i3 = " .. i3 .. " i4 = " .. i4)
end

function lua_param5(i1, i2, i3, i4, i5)
	print("lua  lua_param5 i1 = " .. i1 .. " i2 = " .. i2  .. " i3 = " .. i3 .. " i4 = " .. i4  .. " i5 = " .. i5)
end


function lua_param6(i1, i2, i3, i4, i5, i6)
	print("lua  lua_param6 i1 = " .. i1 .. " i2 = " .. i2  .. " i3 = " .. i3 .. " i4 = " .. i4 .. " i5 = " .. i5 .. " i6 = " .. i6)
end


--[[
print(AAA_1)
print(AAA_1._cpp_class_ptr_)

AAA_1:func1(1)
--]]

global_a = 666




