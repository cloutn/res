----[[
function _chill_nil_newindex_func_(t, k, v)
	print("testLua : _chill_nil_newindex_func_, attempt to update a read-only table");
end
--]]

function readOnly (t)
    local proxy = {}
    local mt = {         -- create metatable
       __index = t,
       __newindex = nil_newindex_func,
    }
 
    setmetatable(proxy, mt)
    return proxy
end

function print_info()
	print("nil_newindex_func")
	print(nil_newindex_func)
	print("test_enum:");
	print(test_enum);
	--test_enum = readOnly(test_enum)
	--[[
	local z = {}
	local mt = {  }
	mt.__index = test_enum
	mt.__newindex = nil_newindex_func
	setmetatable(z, mt)
	test_enum = z;
	--]]
	local mt1 = getmetatable(test_enum);
	print("test_enum metatable:");
	print(getmetatable(test_enum));
	print("mt.__index:");
	print(mt1.__index);
	print("mt.__newindex:");
	print(mt1.__newindex);
	print("test_enum:");
	print(test_enum);

end

function main()
	
	print(test_enum.good);

	print(test_enum.bad);
	print(test_enum.well);
	test_enum.good = 9;
	print(test_enum.good);

	print("++++++test enum 2++++++")
	--test enum 2
	print(test_enum2.good2);

	print(test_enum2.bad2);
	print(test_enum2.well2);
	test_enum2.good2 = 19;
	print(test_enum2.good2);
end
