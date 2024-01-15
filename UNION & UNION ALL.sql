/* To know which name comes from which table we shall create the column type with all entries as customers for the customer table and all entries as employees from the employee table*/

select 'customer' as type, contactFirstName as firstname,contactLastName as lastName
from customers

union

select 'employee' as type, firstName,lastName
from employees;

/*It is possible that a customer and an employee have the same name. But the union statement ignores duplicates. 
To solve this issue and thus allow duplicates we use the union all statement in stead */  
select 'customer' as type, contactFirstName as firstname,contactLastName as lastName
from customers

union all 

select 'employee' as type, firstName,lastName
from employees;



