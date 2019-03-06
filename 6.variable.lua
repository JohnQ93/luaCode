a = 5;  --全局

print(type(a));

a = "Hello";

print(type(a));

local b = 10;  --局部
print(b);

function test()
	c = 5;
	local d = 6;
end

test()

print(c) --全局变量在声明语句块外也可访问
print(d) --局部变量在语句块运行结束后就会销毁

do
	local a = 10;
	b = 11;
	print(a,b);
end
print(a,b);

x,y = 10,20 --多变量同时赋值

x,y,z = 15,25,"hello"

print(x,y,z)

x,y = y,x --直接交换值

print(x,y)

function test()
	return 10,20
end

a = test()

print(a)

a,b = test()

print(a,b)
