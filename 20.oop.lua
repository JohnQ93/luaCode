Person = {name="qiucheng",age=25}

function Person:eat()
	print(self.name.."在吃饭")
	print(self.name.."的年龄是"..self.age)
end

--Person:eat()

function Person:new()
	tab = {}
	setmetatable(tab,{__index = self})
	return tab
end

person1 = Person:new()

print(person1:eat())
