-- 1.����
--  ''  ""  [[ ]]

-- 2.ת���ַ�
--[[
	\n ����
	\\ ����һ����б��
	\"  \' ����" '
--]]

path = "D:\\Learning\\luaCode\n\"QiuCheng\""

print(path)

---------------------------------------------
str = "My name is QiuCheng"
str2 = string.upper(str)
str3 = string.lower(str)

print(str,str2,str3)

-- string.gsub(Ҫ�滻��Դ�ַ�����Ŀ���ַ����ִ�Сд��Ҫ�滻�ɵ��ַ�������滻���ٸ��ַ�)
str4 = string.gsub(str,"i","666",1)

print(str4)

-- string.find(Դ�ַ���������Ŀ�꣬�������)
index = string.find(str,"name") --����Ŀ����ֵ������ţ�û���򷵻�nil
print(index)

-- string.reverse(str) ��ת�ַ���
str5 = string.reverse(str)
print(str5)

-- string.format() ��ʽ���ַ���
num1,num2 = 5,10
str6 = string.format("�ӷ����㣺%d+%d=%d",num1,num2,(num1+num2))
print(str6)

day=7;month=3;year=2019
str7 = string.format("������: %03d��%02d��%02d��",year,month,day)
print(str7)
