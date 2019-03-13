mytable = {"Lua","C#","Java","C++"}

mymetatable = {}

tab1 = setmetatable(mytable,mymetatable)

print(tab1[2])

tab2 = getmetatable(mytable)

print(tab2)
print(mymetatable)

--  1.__metatable���ڱ���Ԫ���е����ݣ������ⲿ���ʻ��޸�
tab3 = setmetatable({"23","1","54","2","321","12"},{__metatable="locked"})
tab4 = getmetatable(tab3)

print(tab3[2])
print(tab4)

--  2.__index���ڷ��ʱ��в����ڵ�����ʱ����һЩ���⴦��
mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__index = function (tab,key)    --tabΪԪ������Ӧ����ͨ�� keyΪ�����ʲ����ڵ�����ֵ
	if key>=10 then
		return "JavaScript"
	end
end
}
--  __index��������һ���µı�ֵ��������������ͨ���в����ڵ�����ֵ
setmetatable(mytable,mymetatable)

print(mytable[1])
print(mytable[9])
print(mytable[10])

--  3.__newindex����ԭʼ�������µļ�ֵ�Ե�ʱ����ö�Ӧ�ĺ���
mytable = {"Lua","C#","Java","C++"}

mymetatable = {
__newindex = function (tab,key,value)
	print("��������һ��keyֵΪ: "..key.."�� valueΪ: "..value)
	rawset(tab,key,value)  --�������ļ�ֵ�Լ������
end
}

--[[
newtable = {}
mymetatable = {
__newindex = newtable   --�µ�ֵ�ḳֵ���µı�
}
--]]

setmetatable(mytable,mymetatable)

mytable[1] = "xLua"
mytable[5] = "TypeScript"

print(mytable[5])

--  4.__add��Ӧ+�������������Զ���������ӵ���Ϊ������-*/%<>һ��

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

--  5._call ����һ����������ʱ�򣬿��԰ѱ�����һ��ʹ�ã�������call

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

--  6.__tostring�����޸ı�������Ϊ

print(mytable)
