--������
--[[
array = {"Lua","C#","Java"}

for k,v in pairs(array) do   --pairs�������е�����key,value
	print(k,v)
end

array[2]=nil

for k,v in ipairs(array) do   --ipairs����������1��ʼ������nil��ֹͣ����
	print(k,v)
end
--]]

--- �Զ����������
function square(state,control)
	if (control>state) then
		return nil
	else
		control=control+1
		return control,control*control
	end
end

for i,j in square,9,0 do
	print(i,j)
end


function elementIterator(collection)
	local index = 0;
	local num = #collection;
	return function()
				index = index + 1;
				if(index <= num) then
					return collection[index]
				end
			end
end

array = {"Lua","C#","Java"}

for i in elementIterator(array) do
	print(i)
end
