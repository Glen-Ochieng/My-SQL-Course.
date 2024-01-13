select distinct *
from  customers ;

select *
from customers 
where city like '%New%' ;

select *
from employees
where lastName like '%M%';

select*
from customers
where upper(city) like '%NEW%'
order by contactFirstName;

select*
from customers
where upper(city) like '%NEW%'
order by  contactFirstName desc;

#to get both first name and last name in descending order use the following code#

select*
from customers
where upper(city) like '%NEW%'
order by  contactFirstName desc, contactLastName desc;
