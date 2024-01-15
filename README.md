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

SELECT DISTICNT columnname

### LIKE %%
This is an extremely useful command that works kinda like * in STATA meaning you don't need to type the entire sentence. 

*Snytax*

WHERE columnname LIKE '%value prefix or suffix %'

### ORDER BY
Order by arranges all the rows of the dataset by the the order of a particular column/variable

*Snytax*

Order usually comes last in the command chain.
SELECT
FROM
ORDER BY column1

*Note*

To get it in descending order you add desc at the end of the order by statement i.e. ORDER BY column1 desc

### INNER JOIN/ JOIN
This is used to join two tables on only columns they have in common

*Snytax* 

SELECT--- 

FROM table1'table1name' 
INNER JOIN table2'table2name' 
ON table1.'table1key'='table2 table2.key'

##### NB

Do not forget the dots on the on statement.
A shortcut however to writing table1 and table2 is to write t1 and t2 in stead. 
Additionally, the phrase, 'inner join' could be replaced with just join. But coding best practices advice using it in full especially if you are still learning.

#### Tasks
*Take notice of all places where all has or has not been used. Usually if it hasn't been used then it's probably and an inner join.*

1. Display all the columns that are common in the two tables customers orders/ Show all customers who had orders.
2. Display all customer names for each employee.
3. Display (non-null)customer names for each employee who is a Sales Rep.
4.Show customers who made a payment and on what date they made that payment.   

### LEFT JOIN
This joins columns that are mutual in both tables and the columns that are in the table in the from statement.

### RIGHT JOIN
This joins columns that are mutual in both tables and the columns that are in the table in the right join statement.
