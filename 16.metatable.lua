mytable = {"Lua","C#","Java","C++"}

mymetatable = {}

tab1 = setmetatable(mytable,mymetatable)

print(tab1[2])

tab2 = getmetatable(mytable)

print(tab2)
print(mymetatable)

--  1.__metatable用于保护元表中的数据，不让外部访问或修改
tab3 = setmetatable({"23","1","54","2","321","12"},{__metatable="locked"})
tab4 = getmetatable(tab3)

print(tab3[2])
print(tab4)

--  2.__index用于访问表中不存在的索引时，做一些特殊处理
mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__index = function (tab,key)    --tab为元表所对应的普通表 key为所访问不存在的索引值
	if key>=10 then
		return "JavaScript"
	end
end
}
--  __index可以申请一个新的表赋值给它，以增加普通表中不存在的索引值
setmetatable(mytable,mymetatable)

print(mytable[1])
print(mytable[9])
print(mytable[10])

--  3.__newindex会在原始表增加新的键值对的时候调用对应的函数
mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__newindex = function (tab,key,value)
	print("新增加了一个key值为: "..key.."， value为: "..value)
end
}

setmetatable(mytable,mymetatable)

mytable[1] = "xLua"
mytable[5] = "TypeScript"
