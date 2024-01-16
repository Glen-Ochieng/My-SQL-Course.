select*, 
cast(paymentDate as datetime) as payment_date_time,
substring(paymentDate,1,7) as payment_year_month
from payments;

/*CONCAT*/
select*,
concat(firstName,' ',lastName) as Full_Name /*The space between the quotation marks adds a space between the first and last name*/
from employees;

select customerName, concat(city," , ", country) as location
from customers