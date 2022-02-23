drop table if exists exam;
create table if not exists exam(
id int primary key auto_increment,
name varchar(20) not null,
chinese float,
math double,
english double
);
insert into exam 
values
(null,'关羽',85,76,70),
(null,'张飞',70,75,70),
(null,'赵云',90,65,95),
(null,'刘备',97,50,50),
(null,'曹操',90,89,80),
(null,'司马懿',90,67,65)

