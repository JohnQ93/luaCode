function fact(n)
	if n==1 then
		return n;
	else
		return n*fact(n-1);
	end
end

print(fact(5))

fact2 = fact

print(fact2(5))

function testFunc(tab,func)
	for k,v in pairs(tab) do
		func(k,v)
	end
end

tab1 = { key1 = "value1", key2 = "value2"}

function fun1(key,value)
	print(key..":"..value)
end

testFunc(tab1,fun1);

--ÄäÃûº¯Êı
testFunc(tab1,
function (k,v)
	print(k.."+"..v)
end
);
