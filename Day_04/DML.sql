create database InstagramDB;
use InstagramDB;
show databases;
create table users (
userid int primary key,
username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
passwords varchar(20) unique not null,
bio text,
isverified boolean default false,
createdate datetime default current_timestamp
);
desc users;

insert into users(userid,username,fullname,email,passwords)
value(1,'Sai','sai','sai@gmail.com','sai123');

insert into users(userid,username,fullname,email,passwords) values
(2,'Benarji','Benarji','benarji@gmail.com','benarji123'),
(3,'Kowshik','kowshik','kowshik@gmail.com','kowshik123');

insert into users 
value(4,'ESwar','Eswar','eswar@gmail.com','Eswar123','SAP Devloper',True,'2026-09-12 09:57:01');

insert into users
values(5,'Surya','surya','surya@gmail.com','surya123','Python Devloper',True,'2026-09-12 10:07:01'),
(6,"Mohan",'mohan','mohan@gmail.com','mohan123','Boxer',True,'2026-09-12 10:09:06');

update users
set bio = 'Python Devloper'
where userid=1;

select @@sql_safe_updates;
set sql_safe_updates = 0;

delete from users
where userid= 1;
delete from users
where fullname='mohan';
select * from  users;