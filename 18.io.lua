-- ��ģʽ
file = io.open("data1.txt","r")

io.input(file)

print(io.read())  --ÿ��ֻ��ȡ�ļ���һ��
print(io.read())
print(io.read())
print(io.read())

io.close(file)


file = io.open("data1.txt","a")

io.output(file)

io.write("\nhello world")

io.close(file)

-- ��ȫģʽ
file = io.open("data1.txt", "r")

print(file:read())
print(file:read())
print(file:read())

file:close()

file = io.open("data1.txt", "a")

file:write("\nNew Line")

file:close()
