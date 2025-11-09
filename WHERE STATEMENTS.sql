/* Where statements are used to filter tables*/

*Syntax*
/* select * from table_name WHERE */

*Eg*

select * from prices 
  WHERE price >= 50 and price <= 60;

*which can also be written as*

select * from prices
WHERE price between 50 and 60;
