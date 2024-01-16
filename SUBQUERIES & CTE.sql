
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
order by average_orders_per_date