--[[

[local] function functionName (arg1,arg2,...,argn)
	functionBody
	[return res1,res2,...resn]
end

--]]

local function max (num1,num2)
	if (num1>num2) then
		return num1
	else
		return num2
	end
end

print( max(1,100) )

--lua��������������ֵ������������������

temp = max

print(temp(50,5))

printFunc = function (arg)
	print("��Ҫ��ӡFunction"..arg)
end

function GetResult(num1,num2,func)
	res = num1 + num2
	func(res)
end

GetResult(20,30,printFunc)

--�������Է��ض��ֵ
function result()
	return 10,15,20,30,50
end

a = result()
print(a)

a,b,c,d,e = result()
print(a,b,c,d,e)

--�������Զ���ɱ����
function sum(...) --"..."��ʾ�ɱ����������ʹ������arg�����ʣ�����arg�����һ��ֵΪ��������

	local arg = {...}  --����һ�����ر������ɱ������ֵ����
	local res = 0
	for k,v in pairs(arg) do
		res = res+v
	end
	print(res)
--[[
	for k,v in pairs(arg) do
		print(k..":"..v)
	end
--]]
end

sum()
sum(1)
sum(1,23)
sum(3,21,34)
sum(5,15,25,35)

function average(...)
	local arg = {...}
	local res = 0
	for k,v in pairs(arg) do
		res = res + v
	end
	print(res/#arg)    --#arg ����ȡ�ñ��е����ݸ���
end

average()
average(3)
average(2,45)
average(12,15,2)
average(4,8,12,16)
average(2,5,25,23,33)
