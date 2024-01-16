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
This is used to join two tables on only columns they have in common.

*Snytax* 

SELECT--- 

FROM table1'table1name' 
INNER JOIN table2'table2name' 
ON table1.'table1key'='table2 table2.key'

##### NB

Do not forget the dots on the on statement.
A shortcut however to writing table1 and table2 is to write t1 and t2 in stead or a and b, and just anything that can be used as a marker. 
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


#### Tasks
1. Show the customer first name, last name,orderdate and status for each order in the orders in the orders table with a matching customer table.
2. Display the first name and last name of all customers, and the order date and the ordernumber of all their orders, even if the customers made no orders.

### UNION AND UNION ALL
Union is used to show the outputs for two querys i.e. select statements.
Union shows non-duplicate observations from two tables where union all shows both duplicated and non-duplicated.

*Syntax*

SELECT columnname(s) from table1
UNION
SELECT columname(s) from table2

BUT THE COLUMN NAMES FROM BOTH TABLES HAVE TO HAVE THE SAME NAME. THIS WHERE THE AS COMMAND TAKES CENTER-STAGE. IF THE TWO TABLES HAVE DIFFERENT NAMES THEN RENAME EITHER OF THE TABLES A COMMON NAME.

### SUM
Sums any column, It is usally best practice to rename that column something like 'totals.columnname' otherwise the column would just be named sum. 

*Syntax*
SELECT sum(columnname) as totals.columnname

### GROUP BY
Just like in R or stata. This particular clause is used in association with summary statistic function(usually after). Group by returns the output ordered by a particular column, usually the non-summary statistic column remaining. 

*Syntax*
SELECT column1, sum(column2) as column2totals
FROM  
GROUP BY column1

### ROUND
*Syntax*
SELECT round(columnname,no.of dp)

### HAVING
Having is the where clause of the aggregate opertaions and comes after the group by but before order by.
NB
Having cannot work without group by!!
*Syntax*

SELECT sum(columnname) as totals
FROM
GROUP BY 
HAVING condtion 

### COUNT
Counts the no. of observations in a column. Just like other aggregate functions it should be renamed to something more meaningful.

*Syntax*
SELECT count(columnname) as n.columnname
FROM  
GROUP BY  
### MAX AND MIN
A usual remember to rename. 

*Syntax*
SELECT max(columnname)/min(columnname) as relevantname 
FROM   
GROUP BY  

### AVG
This returns the average of a column. Remember to rename. 

*Syntax*
SELECT avg(columnname) as relevantname 
FROM
GROUP BY

## SUB QUERIES
This involves query the result of a previous query.
The sub-query enters the FROM clause while in brackets and has to be named i.e. t1

*Simple syntax*
SELECT 
FROM (query 1) t1<-table name of the perivous query



### CTE(COMMON TABLE EXPRESSIONS)
They are another way of performing a sub-query.

*Syntax*
WITH cte_name AS
(sub-query)

SELECT
FROM cte_name

#### CTE's can be chained to created two tables.For the subsuquent tables however don't use WITH  
*Syntax*
WITH cte_name AS
(sub-query1), 

cte_name2, as
(sub_query2)

SELECT
FROM cte_name1 or cte_name2 etc.

### CASE
This is the if-else of SQL that creates a column. It is used to do something if something else has happened.It can be used together with where clause. Remember to put end at the end and also the comma after the end columnname beacuse its just one of many columns you want to select. Just like SELECT column1, column2, etc.

*Syntax*
SELECT
CASE WHEN condition 1 THEN output 1
WHEN condition 2 THEN output 2
WHEN condition 3 THEN output 3
ELSE  output 4
END as appropriate column name,
other columns you wish to select
FROM 

### ROW NUMBER
So this is useful if you have multiple observations of one kind and you wish to number these observations but ordered on another observations. Say, a customer has multiple orders and you wish to arrange these orders and then have them ordered by date. 

*Syntax*
SELECT
ROW_NUMBER() OVER (PARTION BY the_multiple_observation_column order by single_event_column) as relevant_column_name
FROM 

### LEAD 
This is one of those niche corners of knowledge which is very circumstancial in terms of use. So lead orders observations just like row_number but it starts at the next ordered observations. So, just like row_number by starting at number 2 and ending at NULL as there is no next observation after the last observation.

*Syntax*
SELECT
LEAD(column_name we want to order) OVER (PARTION BY the_column_we_want to _partition_by and  order by single_event_column) as next_column_name
FROM 

### LAG
This shows the previous observation.

*Syntax*
SELECT
LAG(column_name we want to order) OVER (PARTION BY the_column_we_want to _partition_by and  order by single_event_column) as previous/last_column_name
FROM 
