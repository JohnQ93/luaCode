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
