tab1 = {}  --�ձ�  {}������ʽ

tab2 = { key1=100, key2="value2" } --��ʼ��һ����

print(tab1);
print(tab1.key);

print(tab2.key1);
print(tab2["key2"]);

tab3 = { "apple","pear","orange","grape"}
print(tab3[2]);
print(tab3["2"]);

for key,val in pairs(tab3) do
	print(key..":"..val)
end

--table����̶�����
tab1.key1 = "qiucheng"
tab1["key2"] = "john"
tab1[10] = 1000

print(tab1.key1);
print(tab1.key2);
print(tab1[10]);

--�޸ı��е�����
tab2.key1 = "lalallalalallalalalalhahhahaha"

for key,val in pairs(tab2) do
	print(key..":"..val)
end

--ɾ�����е�����
tab2.key1 = nil

for key,val in pairs(tab2) do
	print(key..":"..val)
end

tab3[2] = nil

for key,val in pairs(tab3) do
	print(key..":"..val)
end

tab3[100] = "ˮ��"

for key,val in pairs(tab3) do
	print(key..":"..val)
end

tab3["key4"] = "â��"

for key,val in pairs(tab3) do
	print(key..":"..val)
end

--ɾ���������ͷ��ڴ�
tab3 = nil
