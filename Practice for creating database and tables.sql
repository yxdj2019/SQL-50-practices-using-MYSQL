create database if not exists mydb1;

create database if not exists mydb2 charset utf8 ;

alter database mydb2 charset gbk;

drop database if exists mydb1;

use mydb2;
create table if not exists employee
(id  int auto_increment,
name varchar(255) not null,
gender varchar(16),
birthday date,
entry_date date,
job varchar(30),
salary decimal(9,2),
resume text,
primary key (id)
);

create table if not exists employee2
(id  int auto_increment,
name varchar(255) not null,
gender varchar(16),
birthday date,
entry_date date,
job varchar(30),
salary decimal(9,2),
resume text,
primary key (id)
);


drop table if exists employee2 ;

alter table employee add image text;

alter table employee modify job varchar(60);

alter table employee drop gender;

rename table employee to user;

alter table user charset utf8;

alter table user change name surname varchar(60) not null;

insert into user ()
values
(1, 'zs', '1990-01-01', '2010-10-01', 'engineer', 100000.00, 'sdadas', 'asssss'),
(2, 'ls', '1992-01-01', '2019-10-01', 'engineer', 20000.00, 'sdadas', 'asssss'),
(3, 'wangwu', '1993-01-01', '2012-10-01', 'engineer', 120000.00, 'sdadas', 'asssss');

update user set salary=5000 where surname='zs';

update user set salary=3000,  job='acc' where surname='ls';

delete from user where surname='zs';

delete from user