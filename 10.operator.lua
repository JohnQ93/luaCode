-- + - * / % ^(求幂) -  算术运算符
a = 0.9
b = 0.2

print(a%b)

c = 3
d = 3

print(c^d)

e = -5

print(-e)

--  ==  ~=  > < >= <=   关系运算符

x = 30
y = 35

if (x==y) then
	print("x和y相等")
end

if (x~=y) then
	print("x和y不相等")
end

if (x>=y) then
	print("x大于等于y")
end

if (x<=y) then
	print("x小于等于y")
end


--  and  or   not   逻辑运算符

print(20>10 and 30>20)

print(false or false)

print(not true)

print("Hello".."World")

tab = {123,21,41,23,1,23,12,31,32}
print(#tab)

tab2 = {key1="value1",key2="value2"}
print(#tab2)
----- #table #只能取得表中的最大索引号，并非实际元素个数
----- 如果是键值对的表#无法获得元素个数

