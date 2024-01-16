select orderNumber
from orders;

select count(orderNumber) as no_of_orders
from orders;

/*Using the orderdetails table in stead*/
select count( distinct orderNumber) as no_of_orders
from orderdetails;

/*Show the number of orders per date*/
select orderDate,count(orderNumber) as no_of_orders
from orders
group by orderDate;

/*Show the number of orders per product*/
select productCode,count(distinct orderNumber) as no_of_orders
from orderdetails
group by productCode;

/*MAX AND MIN*/

/*What is the highest and lowest payment received on the 9 th of Dec 2003*/

select paymentDate, max(amount) as max_amount, min(amount) as min_amount
from payments 
group by paymentDate
having paymentDate ='2003-12-09';

/*AVG*/

/*Show the average payment received each day*/

select paymentDate, round(avg(amount),2) as average_amount
from payments 
group by paymentDate;