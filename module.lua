module = {}

module.var = "Lua"

module.func1 = function ()
	print("����module���һ������")
end

local func2 = function ()   --�൱��˽�к�����ǰ�治�ü�ģ����
	print("���Ǿֲ�����func2")
end

function module.func3()  --�൱�ڹ��к���������ģ�����Ա�ʾ����
	print("����ȫ�ֺ���func3")
	func2()
end

return module
