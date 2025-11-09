/* Views are saves of the sql query. They are useful if you wish to save the code for future repetitive tasks. They are also useful for sub-quering.*/

/*Syntax
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

/*IMPORTANT TO NOTE: 
ORDER BY DOES NOT WORK WITH VIEWS.
AS SUCH IT IS IMPORTANT TO SUBQUERY THE VIEW IF YOU WISH TO ODRER BY 
*/

/* To drop a view, the syntax is similiar to dropping a table 

Syntax
DROP VIEW view_name
*/
