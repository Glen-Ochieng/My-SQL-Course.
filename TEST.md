For practice, you can go through these 50 sample SQL interview questions
```sql
#1. Write an SQL query to fetch "FIRST_NAME" from worker table using the alias name as <WORKER_NAME>.
select first_name as WORKER_NAME from worker;

#2. Fetch "FIRST_NAME" from worker Table in upper case.
select upper(first_name) from worker;

#3. Fetch unique values of department from worker table.
select distinct department from worker;

#4. Print the first three characters of the first_name from worker table.
select substring(first_name, 1, 3) from worker; 
```
