
str = type("Hello")
print(str)

print(type(10))
print(type(10.1314520))
print(type(print))
print(type(type))
print(type(nil))
print(type(qiucheng))
print(type(false))

if true then
  print("its true")
end

if nil then
  print("nil被当作true处理")
else
  print("nil被当作false处理")
end

str1 = "Hello Everyone"
str2 = "I am John.Q"

html = [[
<html>
 <body>
 "lalalalala.com"
 </body>
</html>
]]

print("6" + 2);
print("6" + "2");
print("6" * "2");
print("6" .. "2");
print(str1..str2)
print(html)
print(#str1)
print(#str2)
print(#html)
