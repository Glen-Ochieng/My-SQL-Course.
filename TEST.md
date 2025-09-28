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
select concat (first_name, ' ', last_name) as complete_name from worker; 

```
