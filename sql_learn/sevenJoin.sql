select * 
	from A left join B
	on A.id = B.id;
--A连接B，取出A不为空的所有情况
	
select * 
	from A right join B
	on A.id = B.id;
--A连接B，取出B不为空的所有情况	

select *
	from A inner join B
	on A.id = B.id;
--A连接B，取AB交集

select *
	from A left join B
	on A.id = B.id
	where B.id is NULL;
--A连接B，AB总和扣除包含B的部分

select *
	from A right join B
	on A.id = B.id
	where A.id is NULL
--A连接B，AB总和扣除包含A的部分

select *
	from A left join B on A.id = B.id 
	union
select * 
	from A right join B on A.id = B.id; 
--A连接B，取AB补集

select *
	from A left join B on A.id = B.id where B.id is NULL
	union
select *
	from A right join B on A.id = B.id where A.id is NULL;
--A连接B，去除AB交集部分（只留下AB独有部分）