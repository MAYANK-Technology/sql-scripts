    
SELECT WEEKDAY('2023-11-05');

SELECT WEEKOFYEAR('2023-11-06');

SELECT YEAR('2023-10-08');

SELECT YEAR('1987-10-08');

SELECT Month('1987-01-01');

SELECT Month('2023-01-01');

SELECT Monthname('1987-10-01');

SELECT day('1987-01-11');
SELECT dayname('2023-10-09');
SELECT dayname('2023-08-09');

SELECT UTC_DATE();
SELECT UTC_TIME(); -- Global time
SELECT UTC_TIMESTAMP(); 

SELECT hour('2023-10-09 11:12:39');
SELECT minute('2023-10-09 11:12:39');
SELECT second('2023-10-09 11:12:39');
select hour(now());
select Minute(now());
select second(now());

select now();
select monthname(now());
select Month(now());

-- Text functions 

Select lcase("Mysql"); -- Lcase means lowercase

Select ucase("Mysql"); -- Ucase means Uppercase 

SELECT LEFT('foot ball', 5); -- left word selection (5) is means 5 letters.
SELECT LEFT('football', 5);
SELECT Right('football', 5);  -- Right word selection 
SELECT Right('foot ball', 5); 

select left(monthname(now()),3); -- exercise
select right(monthname(now()),5); 


SELECT LTRIM('  barbar'); -- with trimming
select ('            barbar'); -- without trimming
SELECT RTRIM('       barbar        '); 
SELECT TRIM('    barbar     ');

select left('Quadratically',5);

SELECT SUBSTRING('Quadratically',5); -- SUBSTRING selects after the number given fro charachter

SELECT SUBSTRING('Quadratically' FROM 4);

SELECT SUBSTRING('Quadratically',5,6); -- selection of character from num 5 and select 6 letters.

SELECT SUBSTRING('Sakila', -3);

SELECT SUBSTRING('Sakila', -5, 3);

SELECT SUBSTRING('Sakila' FROM -4 FOR 2);

select char_length("Sakila");

