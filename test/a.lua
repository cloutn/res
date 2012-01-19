
print("====================================a.lua====================================")


print("====================================	cf0	====================================")
lc:cf0v()
print("lua  return of cf0 = " .. lc:cf0())

print("====================================	cf1	====================================")
print("lua  return of cf1 = " .. lc:cf1("hello cpp!"))
lc:cf1v(222);

print("====================================	cf2	====================================")
print("lua  return of cf2 = " .. lc:cf2("strParam", 2))
lc:cf2v("strParam", 2);

print("====================================	cf3	====================================")
print("lua  return of cf3 = " .. lc:cf3(1, 3.14, 2))
lc:cf3v(1, 3.14, 2);

print("====================================	cf4	====================================")
print("lua  return of cf4 = " .. lc:cf4(1, 3.15, "strParm", 3.16))
lc:cf4v(1, 3.15, "strParm", 3.16);

print("====================================	cf5	====================================")
print("lua  return of cf5 = " .. lc:cf5(1, 3.15, "strParm", 3.16, 66))
lc:cf5v(1, 3.15, "strParm", 3.16, 66);

print("====================================	cf6	====================================")
print("lua  return of cf6 = " .. lc:cf6(1, 3.15, "strParm", 3.16, 66, "strParam2"))
lc:cf6v(1, 3.15, "strParm", 3.16, 66, "strParam2");

print("====================================	luaMemberFunction	====================================")
local za1, za2 = lc:luaMemberFunction(22, 11)
print("lua  za1 = " .. za1 .. "  za2 = " .. za2)

print("====================================	f0	====================================")
f0v()
print("lua  return of f0 = " .. f0())

print("====================================	f1	====================================")
f1v(11)
print("lua  return of f1 = " .. f1(11))

print("====================================	f2	====================================")
f2v(11, 22.22)
print("lua  return of f2 = " .. f2(11, 22.22))

print("====================================	f3	====================================")
f3v(11, 22.22, "333")
print("lua  return of f3 = " .. f3(11, 22.22, "333"))

print("====================================	f4	====================================")
f4v(11, 22.22, "333", 44.44)
print("lua  return of f4 = " .. f4(11, 22.22, "333", 44.44))

print("====================================	f5	====================================")
f5v(11, 22.22, "333", 44.44, 55)
print("lua  return of f5 = " .. f5(11, 22.22, "333", 44.44, 55))


print("====================================	f6	====================================")
f6v(11, 22.22, "333", 44.44, 55, "666")
print("lua  return of f6 = " .. f6(11, 22.22, "333", 44.44, 55, "666"))

--[[

lc:setPos(lc:getPos())

testabc(33, "abc")



print("ok now!");


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

--]]


--[[
print(AAA_1)
print(AAA_1._cpp_class_ptr_)

AAA_1:func1(1)
--]]

global_a = 666

function function_in_lua(p1)
	print("function_in_lua" .. p1);
end





