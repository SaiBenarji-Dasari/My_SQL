select char_length('Hello');
select char_length('😒');

select concat('My', 'SQL');
select concat('Python','','Programing','lang');

select upper('hello');

select lower('HELLO');

select  left('Databse',5);

select right('Database',2);

select substring('database',5);
select substring('Python programming lang',10,7);

select locate('a','Database');

select replace('xxxxxxHexxxxxxxlloxxx','x','');

select trim('Hello     World');

select ltrim(' Hello');
select rtrim('Hello  ');

select reverse('MySQL');

select lpad('12385',10,'-');
select rpad('1123',6,'+');

select repeat('MySQL-',3);
