use excelr;
create table students( roll_no int not null unique, name varchar(20) not null, 
age int check(age>5 and age<15), parents_email varchar(20) unique, address varchar(20) default "-");
insert into students values
(1,'rahul', 10, 'kedar@gmail.com', '56- park street');
insert into students(roll_no, name, age) value
(2, 'swati', 12);
insert into students(roll_no, name, age) value
(3, 'may',20);
select* from students;
desc students;
alter table students alter address set default 'ind';
alter table students modify age int check(age>0);
insert into students(roll_no, name, age) value
(7, 'may',20);
drop table students;
alter table students modify column age drop check;
create table dummy1(id int primary key);
insert into dummy1 value (1), (2);
select* from dummy1;
create table dummy2(id int not null unique, name varchar(20) not null unique );
desc dummy2;
create table dummy3(id int, name varchar(20), primary key(id, name));
desc dummy3;
alter table dummy3 drop primary key;
alter table dummy3 add primary key(id,name);
insert into dummy3(id) values (1);

create table dept( dept_id int, dep_name varchar(30), course_fee float);
insert into dept values(1, 'DA',30000),(2,'DS',40000);
create table trainee(id int, name varchar(30), dept_id int);
insert into trainee values (101,'vishal',1),(102,'seema',2), (103,'kunal',2);
alter table dept add primary key(dept_id);
desc dept;
desc trainee;
alter table trainee add foreign key (dept_id)
references dept(dept_id) on update cascade on delete set null ;
select* from dept;
select * from trainee;
update dept set dept_id=20 where dep_name='DS';
set sql_safe_updates =0;
delete from dept where dep_name="da";
use 3to5;
select *from movies;
select * from members;
select id, title, first_name from movies 
join members on 
members.movieid=movies.id;
select id, title, first_name from members
left join movies on 
members.movieid=movies.id;
select id, title, first_name from members
right join movies on 
members.movieid=movies.id;
select mealname, drinkname,meals.rate,drinks.rate, meals.rate+ drinks.rate as total_price from meals 
cross join drinks;
select* from meals;
select * from drinks;
select concat(mealname,' & ' ,drinkname),meals.rate,drinks.rate, meals.rate+ drinks.rate as total_price from meals 
cross join drinks;
select *from myemp;
select e.emp_id, e.first_name, e.last_name, e.mgr_id, m.first_name,m.last_name from myemp as e
full outer join myemp as m on
e.mgr_id=m.emp_id;
