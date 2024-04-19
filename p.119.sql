use my_train_titanic;

-- P.119 1.分組呈現各性別的平均年齡 
select sex, avg(age) as 平均年齡 from passengers
group by sex;

-- P.119 2.分組呈現各船艙等級的最大年齡歲數
select pclass, max(age) from passengers
group by pclass;

-- P.119 3.分組呈現各船艙等級的最小年齡歲數
select pclass, min(age) from passengers
group by pclass;