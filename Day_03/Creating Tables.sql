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
select * from users;
alter table users
add column phonenumber varchar(10);
alter table users
modify column fullname varchar(150);
alter table users
change column bio biography text;
alter table users
drop column phonenumber;
alter table users
rename to UserInfo;

desc UserInfo;

truncate table UserInfo;
drop table UserInfo;

CREATE TABLE Posts(
PostID INT PRIMARY KEY,
UserID INT NOT NULL,
Caption TEXT,
ImageURL VARCHAR(225) NOT NULL,
Likescount INT DEFAULT 0,
Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE  TABLE Comments(
CommentID INT PRIMARY KEY,
PostID BIGINT NOT NULL,
UserID INT NOT NULL,
CommentText VARCHAR(225) NOT NULL,
Likescount INT DEFAULT 0,
Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
desc Comments;