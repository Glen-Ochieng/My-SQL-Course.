For practice, you can go through these 50 sample SQL interview questions
```sql
#1. Fetch "FIRST_NAME" from worker table using the alias name as <WORKER_NAME>.
select first_name as WORKER_NAME from worker;

#2. Fetch "FIRST_NAME" from worker Table in upper case.
select upper(first_name) from worker;

#3. Fetch unique values of department from worker table.
select distinct department from worker;

#4. Print the first three characters of the first_name from worker table.
select substring(first_name, 1, 3) from worker;

#5. Find the position of the alphabet ('b') in the first name column 'Amitabh' from worker table
select instr(first_name,'B') from worker where first_name ='Amitabh';

#6. Print the first_name from the worker table after removing the white spaces from the right side
select rtrim(first_name) from worker;

#7. Print the department from worker table after removing white spaces from the left side.
select ltrim(department) from worker;

#8. Fetch the unique values of department from the worker table and print its length
select distinct department, length(department) from worker;

#9. Print the first_name from worker table after replacing 'a' with 'A'
select replace(first_name,'a','A') from worker;

#10. Print the first_name and last_name from worker into a single column complete_name. A space should seperate the two names.
select concat(first_name, ' ', last_name) as complete_name from worker;

#11. Print all the worker details from the worker table ordered by first_name ascedning
select * from worker order by first_name;

#12. Print all the worker details from the worker table ordered by first_name ascending and department descending.
select * from worker first_name, department desc;

#13. Print details for workers with the first name as "Vipul" and "Satish" from worker table.
select * from worker in first_name("Vipul","Satish");

#14. Print details of workers excluding first names, "Vipul" and "Satish" from worker table.
select * from worker not in first_name('Vipul','Satish');

#15. Print details of workers with departments name as 'Admin*'
select * from worker where department like 'Admin%';

#16. Print details of the workers whose first_names contains 'a'
select * from workers where first_name like '%a%';

#17. Print details of the workers whose first_name wends with an 'a'
select * from workers where first_name like '%a';

#18. Print details of the workers whose first_name ends with 'h' and contains six alphabets.
select * from workers where first_name like '_____h';

#19. Print details of workers whose salary lie between 100000 and 500000.
select * from workers where salary between 1000000 and 500000;

#20. Print deatils of the workers who joined in Feb'2014
select * from workers where YEAR(joining_date)= 2014 AND MONTH(joining_date) = 02;

#21. Write an SQL query to fetch the count of employees working in the department 'Admin'
select department,count(*) from worker where department = 'Admin';

#22. Fetch worker full names with salaries >=50000 and <=100000.
select concat(first_name,' ',last_name) from workers where salary between 490000 and 101000;

#23. Fetch the no. of workers for each department in descending order
select department, count(worker_id) as no_of_workers from worker group by department
order by no_of_workers desc;

#24. Print details of workers who are also managers
select * from workers as w
inner join title as t
on w.worker_id=t.worker_ref_id
where t.worker_title='Manager';

#25. Fetch the number(more than 1) of the same titles in the ORG of different types.
select worker_title, count(*) as count from title group by worker_title having count >1;

#26. Show only odd rows from a table
select * from worker where MOD(worker_id,2) != 0;
#OR
select * from worker where MOD(worker_id,2)<> 0;

#27. Show only the even rows of a table
select * from worker where MOD(worker_id,2) = 0;

#28. Write a query to clone a new table from another table
create table worker_clone like worker # like makes the table have the same structure including columns and data types
insert into worker_clone select * from worker; # values commmand is not needed for a full copy

#29. Fetch interstecting records of two tables.
select worker.* from worker
inner join worker_clone
using (worker_id);

#30. Show all the records from one table that another table does not have
select worker.* from worker
left join worker_clone
using(worker_id)
where worker_clone.worker_id is NULL; # uses everything from first table and only empty/ non matching entries in second table. Since worker_clone is not null then no values from the second table will appear 



```
