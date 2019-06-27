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

--lua函数可以用来赋值，函数可以用作参数

temp = max

print(temp(50,5))

printFunc = function (arg)
	print("我要打印Function"..arg)
end

function GetResult(num1,num2,func)
	res = num1 + num2
	func(res)
end

GetResult(20,30,printFunc)

--函数可以返回多个值
function result()
	return 10,15,20,30,50
end

a = result()
print(a)

a,b,c,d,e = result()
print(a,b,c,d,e)

--函数可以定义可变参数
function sum(...) --"..."表示可变参数，可以使用内置arg来访问，并且arg的最后一个值为参数个数

	local arg = {...}  --声明一个本地表，并将可变参数赋值给它
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
	print(res/#arg)    --#arg 用来取得表中的数据个数
end

average()
average(3)
average(2,45)
average(12,15,2)
average(4,8,12,16)
average(2,5,25,23,33)
