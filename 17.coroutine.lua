co = coroutine.create(    -- 定义协同函数
	function (a,b)
		print(a+b)
	end
)

coroutine.resume(co,2,3)  -- 启动协同函数

co2 = coroutine.wrap(     -- 另一种创建协同函数的方式，启动方式不一样
	function (a,b)
		print(a-b)
	end
)

co2(10,2)  -- coroutine.wrap创建的协程可以和普通函数一样直接调用


co3 = coroutine.create(
	function (a,b)
		print(a+b)
		coroutine.yield(a,b)  -- 使用yield将协程挂起，下面代码被暂停
		print(a-b)
		return a*b,a/b
	end
)

res1,res2,res3 = coroutine.resume(co3,50,20)

print(res1,res2,res3)   -- yield后面的参数将会被返回

print("运行完了吗？")

res1,res2,res3 = coroutine.resume(co3)     -- 继续运行一个协程的时候不需要再次传入参数

print(res1,res2,res3)   -- 第一个返回值为协程启动是否成功的bool值，后续值为协程返回值


------------------------------------

function foo(a)
	print("函数输入值为："..a)
	return coroutine.yield(2*a)
end

co = coroutine.create(
	function (a,b)
		print("第一次resume传入的参数 "..a..","..b)
		local r = foo(a+1)
		print("第二次resume传入的参数 "..r)
		local x,y = coroutine.yield(a+b,a-b)
		print("第三次resume传入的参数 "..x..","..y)
		return b,"结束协同程序"
	end
)

print(coroutine.resume(co,1,10))
print(coroutine.resume(co,"qiucheng"))
print(coroutine.resume(co,"hello","world"))
print(coroutine.resume(co,"hello","world"))

-- resume和yield的配合强大之处在于，resume处于主程中，它将外部状态（数据）传入到协同程序内部；而yield则将内部的状态（数据）返回到主程中。
