create table worker
(first_name varchar(10) not null); 
select * from worker; 
insert into worker(first_name)
values('Mary '),
(' Lucy ');


select rtrim(first_name) from worker; #removes all the white spaces to the right 
select ltrim(first_name) from worker; #removes all the white spaces to the left
select trim(first_name) from worker; # removes all the white spaces both the left and the right

