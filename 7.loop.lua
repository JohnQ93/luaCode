--[[

����ѭ��
1.whileѭ��
2.forѭ��
3.repeat until ѭ��

--]]

----------------------------------------
a = 1
while (a<=20) do
	if (a%2==1) then
		print(a)
	end
	a=a+1
end

-----------------------------------------
for i=1,10,2 do
	print(i)
end

for i=20,1,-3 do
	print(i)
end

-----------------------------------------
tab1 = {key1="value1",key2="value2"}
for k,v in pairs(tab1) do
	print(k,v)
end

tab2 = {"Q","I","U","C","H","E","N","G"}
for k,v in pairs(tab2) do
	print(k,v)
end

------------------------------------------
a = 1
repeat
	print(a)
	a=a+1
until (a>10)

--ѭ��Ƕ��
for i=1,10 do
	for j=1,i do
		print("��"..j.."��"..i)
	end
end

for i=1,10 do
	j=1
	repeat
		print("��"..j.."��"..i)
		j=j+1
	until (j>i)
end
