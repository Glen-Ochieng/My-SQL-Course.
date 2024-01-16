
select orderDate, count(orderNumber) as no_of_orders
from orders
group by orderDate;

/*Now the above becomes the subquery*/
select avg(no_of_orders) as average_amount_of_orders
from(
select orderDate, count(orderNumber) as no_of_orders
from orders
group by orderDate) t1;



select orderDate,avg(no_of_orders) as average_orders_per_date
from(
select orderDate, count(orderNumber) as no_of_orders
from orders
group by orderDate) t1
group by orderDate
order by average_orders_per_date;

/*CTE*/
with cte_orders as /*this names the sub-querytable cte_orders so we dont need the t1 after the subquery bracket*/
(
select orderDate, count(orderNumber) as no_of_orders
from orders
group by orderDate)

select avg(no_of_orders) average
from cte_orders
where orderDate>"2005-05-01"