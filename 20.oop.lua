Person = {name="qiucheng",age=25}

function Person:eat()
	print(self.name.."�ڳԷ�")
	print(self.name.."��������"..self.age)
end

--Person:eat()

function Person:new()
	tab = {}
	setmetatable(tab,{__index = self})
	return tab
end

person1 = Person:new()

print(person1:eat())
