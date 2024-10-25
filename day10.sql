use 3to5;
create table india(id int, name varchar(20), phone_number varchar(10));
select* from india;
drop table india;
truncate table india;
create unique index i1 on india(id,name);
show indexes from india;
drop index i1 on india;
create unique index i1 on india(name, phone_number);
# day 10 problem
use classicmodels;
select * from offices;
select o.territory, count(e.employeeNumber) number_of_employee from employees e
join offices o on
o.officeCode= e.officecode group by territory;
create view v11 as select o.territory, count(e.employeeNumber) number_of_employee from employees e
join offices o on
o.officeCode= e.officecode group by territory;
select * from v11;
-- stored procedure
use 3to5;
select * from myemp;
delimiter //
create procedure new1()
begin 
select * from myemp where emp_id=100;
end //
delimiter ;
call new1();
drop procedure new1;

delimiter //
create procedure new2(a int)
begin
select * from myemp where emp_id=a;
end //
delimiter ;
call new2(100);
-- passing 2 variable
delimiter // 
create procedure new3(a int, b int)
begin
select * from myemp where emp_id between a and b;
end //
delimiter ;
call new3(101,110);
-- diff data type
delimiter //
create procedure new4(var1 varchar(10), var2 int unsigned )
begin
select * from myemp where job_id= var1 and salary > var2;
end //
delimiter ;
drop procedure new4;
delimiter //
create procedure new_output(out a decimal(7,3))
begin
select avg(salary) into a from myemp;
end //
delimiter ;
drop procedure new_output;
select @a;
select @a+1000;
delimiter //
create procedure out_in2(x int, y int, out w decimal(10,3))
begin
select avg(salary) into w from myemp where emp_id between x and y;
end //
delimiter ;
-- day 10 problem
use classicmodels;
select * from orders;
delimiter //
create procedure get_order_status( status_value varchar(20))
begin
select count(ordernumber), year(orderdate) year from orders where status = status_value group by year;
end //
delimiter ;







