a = 5;  --ȫ��

print(type(a));

a = "Hello";

print(type(a));

local b = 10;  --�ֲ�
print(b);

function test()
	c = 5;
	local d = 6;
end

test()

print(c) --ȫ�ֱ���������������Ҳ�ɷ���
print(d) --�ֲ��������������н�����ͻ�����

do
	local a = 10;
	b = 11;
	print(a,b);
end
print(a,b);

x,y = 10,20 --�����ͬʱ��ֵ

x,y,z = 15,25,"hello"

print(x,y,z)

x,y = y,x --ֱ�ӽ���ֵ

print(x,y)

function test()
	return 10,20
end

a = test()

print(a)

a,b = test()

print(a,b)
