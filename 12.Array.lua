array = {"lua","C#"}

array[3]="Java"

for i=1,3 do
	print(array[i])
end

array = {}

for i=-2,2 do
	array[i] = i*3
end

for i=-2,2 do
	print(array[i])
end


---- ถþฮฌสýื้

array2 = {{"q","w"},{"e","r"},{"a","s"},{"d","f"}}

print(array2[3][1])

for i=1,4 do
	for j=1,2 do
		print(array2[i][j])
	end
end

array3 = {{},{},{}}

for i=1,3 do
	for j=1,2 do
		array3[i][j] = i*j
	end
end

for i=1,3 do
	for j=1,2 do
		print(array3[i][j])
	end
end

