Person = {name="qiucheng",age=25}

function Person:eat()
	print(self.name.."在吃饭")
	print(self.name.."的年龄是"..self.age)
end

--Person:eat()

function Person:new(o)
	local tab = o or {}
	setmetatable(tab,{__index = self})
	--setmetatable(tab,self)
	--self.__index = self
	return tab
end

person1 = Person:new()

print(person1:eat()) --冒号的作用，函数定义时，默认给函数添加隐藏的第一个参数self
print(person1.name)

person1.name="john"  --对属性进行修改不会对原型表做出修改，会赋值给tab;
person1:eat()

person2 = Person:new({weight=100})
print(person2.weight)

Student = Person:new()
Student.grade = 1

student1 = Student:new()

student1:eat()
print(student1.grade)

-- student1继承于Student，Student继承于Person
