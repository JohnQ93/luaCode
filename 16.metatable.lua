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
end
}

setmetatable(mytable,mymetatable)

mytable[1] = "xLua"
mytable[5] = "TypeScript"
