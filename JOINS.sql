select *
from orders t1
inner join customers t2 
on t1.customerNumber= t2.customerNumber

/*However, the columname customerNumber will appear twice in the joined table*/

select customerName,contactLastName,contactFirstName
from employees t1
left join customers t2
on t1.employeeNumber= t2.salesRepEmployeeNumber;

select *
from employees t1
left join customers t2
on t1.employeeNumber= t2.salesRepEmployeeNumber
where t2.customerName is null
and t1.jobTitle ='Sales Rep';


select customerName,contactLastName,contactFirstName
from customers t1
right join employees t2
on t1.salesRepEmployeeNumber = t2.employeeNumber;

select  t1.customerName , t2.amount,t2.paymentDate
from customers t1
inner join payments t2
on t1.customerNumber= t2.customerNumber;

select  t1.customerName , t2.amount,t2.paymentDate
from customers t1
left join payments t2
on t1.customerNumber= t2.customerNumber
where amount is not null;
