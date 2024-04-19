use my_database;

-- 建置表格
create table player_02(
player_id int,
player_name varchar(50),
player_age int,
player_salary int,
player_team varchar(50)
);

-- 查看表格配置及設定
desc player_02;

-- 刪除表格
drop table player_02;
