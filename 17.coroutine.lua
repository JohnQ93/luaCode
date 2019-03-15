co = coroutine.create(    -- ����Эͬ����
	function (a,b)
		print(a+b)
	end
)

coroutine.resume(co,2,3)  -- ����Эͬ����

co2 = coroutine.wrap(     -- ��һ�ִ���Эͬ�����ķ�ʽ��������ʽ��һ��
	function (a,b)
		print(a-b)
	end
)

co2(10,2)  -- coroutine.wrap������Э�̿��Ժ���ͨ����һ��ֱ�ӵ���


co3 = coroutine.create(
	function (a,b)
		print(a+b)
		coroutine.yield(a,b)  -- ʹ��yield��Э�̹���������뱻��ͣ
		print(a-b)
		return a*b,a/b
	end
)

res1,res2,res3 = coroutine.resume(co3,50,20)

print(res1,res2,res3)   -- yield����Ĳ������ᱻ����

print("����������")

res1,res2,res3 = coroutine.resume(co3)     -- ��������һ��Э�̵�ʱ����Ҫ�ٴδ������

print(res1,res2,res3)   -- ��һ������ֵΪЭ�������Ƿ�ɹ���boolֵ������ֵΪЭ�̷���ֵ


------------------------------------

function foo(a)
	print("��������ֵΪ��"..a)
	return coroutine.yield(2*a)
end

co = coroutine.create(
	function (a,b)
		print("��һ��resume����Ĳ��� "..a..","..b)
		local r = foo(a+1)
		print("�ڶ���resume����Ĳ��� "..r)
		local x,y = coroutine.yield(a+b,a-b)
		print("������resume����Ĳ��� "..x..","..y)
		return b,"����Эͬ����"
	end
)

print(coroutine.resume(co,1,10))
print(coroutine.resume(co,"qiucheng"))
print(coroutine.resume(co,"hello","world"))
print(coroutine.resume(co,"hello","world"))

-- resume��yield�����ǿ��֮�����ڣ�resume���������У������ⲿ״̬�����ݣ����뵽Эͬ�����ڲ�����yield���ڲ���״̬�����ݣ����ص������С�
