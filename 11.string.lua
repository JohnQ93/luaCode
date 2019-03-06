-- 1.定义
--  ''  ""  [[ ]]

-- 2.转义字符
--[[
	\n 换行
	\\ 代表一个反斜杠
	\"  \' 代表" '
--]]

path = "D:\\Learning\\luaCode\n\"QiuCheng\""

print(path)

---------------------------------------------
str = "My name is QiuCheng"
str2 = string.upper(str)
str3 = string.lower(str)

print(str,str2,str3)

-- string.gsub(要替换的源字符串，目标字符区分大小写，要替换成的字符，最大替换多少个字符)
str4 = string.gsub(str,"i","666",1)

print(str4)

-- string.find(源字符串，查找目标，查找起点)
index = string.find(str,"name") --返回目标出现的索引号，没有则返回nil
print(index)

-- string.reverse(str) 反转字符串
str5 = string.reverse(str)
print(str5)

-- string.format() 格式化字符串
num1,num2 = 5,10
str6 = string.format("加法运算：%d+%d=%d",num1,num2,(num1+num2))
print(str6)

day=7;month=3;year=2019
str7 = string.format("日期是: %03d年%02d月%02d日",year,month,day)
print(str7)
