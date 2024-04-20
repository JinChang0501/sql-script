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
where pname like 'Andersson, %' and ticket = 347082;


-- 4.	承上題，已知Afrida還有一個已婚的妹妹叫做Anna，請找出Anna與其丈夫小孩一家三口的全部資料
-- <<提示一>>已結婚的女性姓名欄中仍會註記娘家姓氏
-- <<提示二>>觀察一家人可能會有的資料特徵

select * from full_passengers where pname like '%Anna%' or pname like '%Andersson%';

-- 5.	找出所有名字是Leonard的男性乘客，顯示id, pclass, pname
-- <<提示>>共7位，不是8位
select id, pclass, pname from full_passengers
where pname like '%Leonard%' and sex = 'male' and not pname like 'Leonard%';



-- 6.	查詢所有乘客持有的票券中，最多人持有的那一種ticket，回傳票券名稱(ticket)與持有人數(ticket_count)兩個欄位
-- <<提示>>共11人持有

select ticket, count(ticket) as ticket_count from full_passengers
group by ticket
order by ticket_count desc limit 1;

-- 7.	找出二等客艙以及三等客艙中所有男性乘客的平均年齡
-- <<提示>>小心邏輯運算子的使用

select pclass, avg(age) as '平均年齡' from full_passengers
where sex = 'male' and pclass in (2,3)
group by pclass;

select sex, avg(age) as '平均年齡' from full_passengers
where sex = 'male' and pclass in (2,3);


-- 8.列出所有登船點的登船人數與百分比，僅列出有明確登船地點的資料即可
-- <<提示一>>3列3欄，3欄位名稱分別為登船點、登船人數、登船點佔百分比
-- <<提示二>>select round(3.14159, 2);
select embarked as 登船點, count(embarked) as 登船人數, round(count(embarked) / (select count(id) from full_passengers where embarked != '')*100, 2) as ratio from full_passengers
where embarked != ''
group by embarked;


select round(3.14159, 3) from full_passengers;




show warnings;

select count(id) from full_passengers;



