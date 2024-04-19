use my_titanic;

-- 1.	查詢各性別乘客的總人數，請顯示在sex與gender_counts這兩個欄位
select sex, count(sex) as gender_counts from full_passengers
group by sex;

-- 2.	查詢第591至第883名乘客的id與姓名資料
select id, pname from full_passengers where id >= 591 and id <= 883;

-- 3.	請找出所有的Anders & Alfrida Andersson家成員以及存活狀態
-- <<提示一>>共7人
-- <<提示二>>同一家人會一起上下船
select * from full_passengers
where pname like 'Andersson, %';


-- 4.	承上題，已知Afrida還有一個已婚的妹妹叫做Anna，請找出Anna與其丈夫小孩一家三口的全部資料
-- <<提示一>>已結婚的女性姓名欄中仍會註記娘家姓氏
-- <<提示二>>觀察一家人可能會有的資料特徵

-- select * from full_passengers (select * from full_passengers where pname like '%Anna%')

-- 5.	找出所有名字是Leonard的男性乘客，顯示id, pclass, pname
-- <<提示>>共7位，不是8位
select id, pclass, pname from full_passengers
where pname like '%Leonard%' and sex = 'male';

show warnings;

select * from full_passengers;





