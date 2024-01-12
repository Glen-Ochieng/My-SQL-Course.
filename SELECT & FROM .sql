select * from customers where contactLastName != "Young";

select customerName, contactFirstName,contactLastName,phone,city,country
from customers
where contactFirstName="Julie" 
and country="USA";

select contactFirstName,contactLastName
from customers 
where country="Norway"
or country="Sweden";

select *
from customers
where country="USA"
and contactLastName = 'Brown'
or country="UK"
and contactLastName = 'Brown';

select email
from employees
where jobTitle="Sales Rep"
