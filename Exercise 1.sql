/*Show the customer name of the company that made the most number of orders*/
/*Hint:to avoid customers who didn't have an order use inner join  */

select customerName, count(orderNumber) as no_of_orders
from customers t1
inner join orders t2
on t1.customerNumber= t2.customerNumber
group by customerName
order by no_of_orders desc
/*To get just the one we use limit*/
limit 1;

/*Display each customers first and last order date*/
select customerName, min(orderDate) as first_order_date, max(orderDate) as last_order_date
from customers t1
inner join orders t2
on t1.customerNumber= t2.customerNumber
group by customerName
