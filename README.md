# Basic-SQL

The beginnings of SQL. For the intial chapters I will be using the classical models database. Hopefully it can be found on the internet and its easily downloadable.


### SELECT & FROM 
****syntax****

SELECT column_name, column_name2, column_name3 etc  
FROM table_name  
WHERE condition e.g. name ='Glen'  
AND/OR condition2 etc 


*Hint*

At the end of one query, put a semicolon to start a new line of query.
If you start by writing the FROM statement first, when you write the SELECT statement the columnnames will be autosuggested.

#### Tasks
1. All records where customers last name is not Young.
2. Show customername, first name, last name, phone, city and country where first name is Julie and she is from USA.
3. First name and last name for customers from Norway or Sweden.
4. Show all columns for customers from the USA or UK with surname Brown
5. For employees who are sales reps, display their email.

### IN & NOT IN 
This is is a very useful command for extracting single or multiple specific values.

*Snytax*
SELECT ---
FROM ---
WHERE--- IN
('value1',
'value2'
'value n')

### DISTINCT
If you have a column with multiple column entries you can use the code distict before the colummn name to display only unique observations from that column

*Snytax*
SELECT DISTICNT(columnname)


