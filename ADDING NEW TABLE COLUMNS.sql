create database Microsoft_Fabric_Course;
show databases;
create table microsoft_fabric_course.table_1
(column_1 int not null,
column_2 varchar(10),
column_3 date
);
select* from table_1;

insert into table_1
values(
10, "howdy","2025-09-28"); 

alter table table_1
add column_4 int not null;
