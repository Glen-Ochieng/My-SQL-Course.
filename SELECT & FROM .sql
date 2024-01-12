select * from customers where contactLastName != "Young";

select customerName, contactFirstName,contactLastName,phone,city,country
from customers
where contactFirstName="Julie" 
and country="USA";

select contactFirstName,contactLastName
from customers 
where country="Norway"
or country="Sweden"