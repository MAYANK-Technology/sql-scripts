DELIMITER $$
SET SQL_SAFE_UPDATES=0;
USE 3to5;
$$
CREATE FUNCTION cube2 (no int)
RETURNS INTEGER
deterministic
BEGIN
declare result int;
set result = no*no*no;
RETURN result;
END$$

DELIMITER ;

use 3to5;
delimiter //
create function voting (age int) returns varchar(30)
deterministic
begin
declare ans varchar(20);
if age >18 then set ans= 'can vote';
else set ans ="can't vote";
end if;
return ans;
end //
delimiter ;
select * from myemp;
select *, count(emp_id) from myemp;
select *, count(emp_id) over() as "total employee" from myemp;
select *, count(emp_id) from myemp;
Select *,min(salary) over(partition by dep_id) as min_salary, max(salary) over(partition by dep_id) as max_salary, avg(salary) over(partition by dep_id) as avg_salary from myemp;
 Select dep_id, first_name, salary,min(salary) over(partition by dep_id) 
 as min_salary, max(salary) over(partition by dep_id) as max_salary, 
 avg(salary) over(partition by dep_id) as avg_salary from myemp;
 select row_number() over(order by salary desc) as 'number', emp_id, salary from myemp;
  select row_number() over(order by salary) as 'number', emp_id, salary from myemp limit 1;
  select rank() over(order by salary desc) as 'rank', emp_id, salary from myemp;
  select * from myemp;
  select * from trains;
  -- lead and lag
  select *, lead(time) over() as nextstation, lead(station) over() from trains;
    select *, lead(time) over(partition by train_id) as nextstation, lead(station) over(partition by train_id) from trains;
    select *, lag(time) over(partition by train_id) as lasttime, lag(station) over(partition by train_id) as laststation from trains;
    
 -- task 12
 use classicmodels;
 select * from products;
 select distict productline , max(msrp) over(partition by productline) from products;
 
