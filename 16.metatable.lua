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
	rawset(tab,key,value)  --把新增的键值对加入表中
end
}

--[[
newtable = {}
mymetatable = {
__newindex = newtable   --新的值会赋值给新的表
}
--]]

setmetatable(mytable,mymetatable)

mytable[1] = "xLua"
mytable[5] = "TypeScript"

print(mytable[5])

--  4.__add对应+操作符，可以自定义表与表相加的行为，其他-*/%<>一样

mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__add = function (tab,newtab)
	local mi = 0
	for k,v in ipairs(tab) do
		mi = mi+1
	end

	for k,v in ipairs(newtab) do
		mi = mi+1
		table.insert(tab,mi,v)
	end
	return tab
end
}

setmetatable(mytable,mymetatable)

secondtable = {"python","Javascript"}

thirdtab = mytable + secondtable
forthtab = secondtable + mytable

for k,v in ipairs(forthtab) do
	print(k,v)
end

--  5._call 当对一个表传参数的时候，可以把表当函数一样使用，则会调用call

mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__add = function (tab,newtab)
	local mi = 0
	for k,v in ipairs(tab) do
		mi = mi+1
	end

	for k,v in ipairs(newtab) do
		mi = mi+1
		table.insert(tab,mi,v)
	end
	return tab
end,
__call = function (tab, arg1,arg2,arg3)
	table.insert(tab, #tab+1,arg1)
	print(arg1,arg2,arg3)
end,
__tostring = function (tab)
	local str = ""
	for k,v in ipairs(tab) do
		str = str..v..","
	end
	return str
end
}

setmetatable(mytable,mymetatable)

mytable("Hello")

for k,v in ipairs(mytable) do
	print(k,v)
end

--  6.__tostring用于修改表的输出行为

print(mytable)
