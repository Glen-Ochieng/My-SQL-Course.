/* Where as views save the entire SQL workspace like a foldder. There is a smaller way to save individual queries in SQL. Let's say you wish to save a complex query for future use, you can do so by creating it as a procedure.

Syntax 
CREATE PROCEDURE/PROC [procedure_name]
AS
[your_normal_sql_query];

For more than one sql query 

Syntax (MYSQL)
CREATE PROCEDURE/PROC [procedure_name]
AS
BEGIN
[first_sql_query];
[second_sql_query];
END;

Syntax (TSQL)
CREATE PROCEDURE/PROC [procedure_name]
AS
[first_sql_query];
[second_sql_query];



*/

--Example

CREATE PROCEDURE demo_proc
AS
CREATE TABLE temp_table(name VARCHAR(255), age INT);


CREATE PROCEDURE demo_proc
AS
BEGIN
    CREATE TABLE temp_table (name VARCHAR(255), age INT);
    INSERT INTO temp_table VALUES ('John', 32);
END;


/*After creation of the procedure, you have to execute them for them to take action.

SYNTAX
EXECUTE/EXCEC [procedure_name];
*/

EXECUTE demo_proc;

/*ALTERING PROCEDURES

Syntax

ALTER PROCEEDURE [procedure_name]
AS
BEGIN
[new SQL queries];
END;
EXCEUTE [procedure_name];
*/

--PARAMETERS
/*This allows you insert input option into the procedure query. 

Syntax

CREATE/ALTER PROCEDURE [procedure_name](@parameter name [parameter setting])
AS
BEGIN
[new SQL queries];
END;
EXCEUTE [procedure_name]
*/

--Example

ALTER PROCEDURE demo_proc(@price DECIMAL(10,2))
AS
SELECT * FROM orders where unit_price> @price;

EXECUTE demo_proc @price= 100;
