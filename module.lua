module = {}

module.var = "Lua"

module.func1 = function ()
	print("这是module里的一个函数")
end

local func2 = function ()   --相当于私有函数，前面不用加模块名
	print("这是局部函数func2")
end

function module.func3()  --相当于公有函数，加上模块名以表示所属
	print("这是全局函数func3")
	func2()
end

return module
