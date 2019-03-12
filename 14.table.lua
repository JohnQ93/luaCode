mytable = {}

mytable[1] = "Lua"

mytable[1] = nil

mytable = nil

mytable = {}

print(type(mytable))

mytable[1] = "Lua"
mytable["John"] = "Qiu"

newtable = mytable

print(newtable[1])
print(mytable[1])

mytable[2] = "C#"

print(newtable[2])

mytable = nil

print(newtable[2])

mytable = {"Lua", "C#", "C++", "Java"}

print(table.concat(mytable)) --table连接

print(table.concat(mytable,", "))

print(table.concat(mytable,", ",2,3))

table.insert(mytable, "JavaScript") --table插入

print(mytable[5])

table.insert(mytable, 2, "Swift")

print(mytable[2])
print(mytable[6])

table.remove(mytable) --table移除

print(mytable[6])

table.remove(mytable, 2)

for k,v in ipairs(mytable) do
	print(k,v)
end

table.insert(mytable, "c")
table.insert(mytable, "C")
table.sort(mytable)  --table排序，区分大小写，根据ASCII码表

for k,v in ipairs(mytable) do
	print(k,v)
end

function get_max_number(tab)
	local mn = 0
	for k,v in ipairs(tab) do
		if (mn < v) then
			mn = v
		end
	end
	return mn
end

numtable = {12,31,2,12,4,12,3,12,1,24,12,3,124,12,4,12,3,12,1}

print(get_max_number(numtable))
