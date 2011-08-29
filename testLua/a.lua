
print("==================a.lua==================")


lc:setPos(lc:getPos())

print("lua  " .. lc:f0())
lc:f0v()

print("lua  " .. lc:f1("hello cpp!"))
lc:f1v(222);

print("lua  " .. lc:f2(1, 2))
lc:f2v(223, 224);


--[[
print(AAA_1)
print(AAA_1._cpp_class_ptr_)

AAA_1:func1(1)
--]]

global_a = 666




