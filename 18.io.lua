-- 简单模式
file = io.open("data1.txt","r")

io.input(file)

print(io.read())  --每次只读取文件的一行
print(io.read())
print(io.read())
print(io.read())

io.close(file)


file = io.open("data1.txt","a")

io.output(file)

io.write("\nhello world")

io.close(file)

-- 完全模式
file = io.open("data1.txt", "r")

print(file:read())
print(file:read())
print(file:read())

file:close()
