Person = {name="qiucheng",age=25}

function Person:eat()
	print(self.name.."�ڳԷ�")
	print(self.name.."��������"..self.age)
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

print(person1:eat()) --ð�ŵ����ã���������ʱ��Ĭ�ϸ�����������صĵ�һ������self
print(person1.name)

person1.name="john"  --�����Խ����޸Ĳ����ԭ�ͱ������޸ģ��ḳֵ��tab;
person1:eat()

person2 = Person:new({weight=100})
print(person2.weight)

Student = Person:new()
Student.grade = 1

student1 = Student:new()

student1:eat()
print(student1.grade)

-- student1�̳���Student��Student�̳���Person
