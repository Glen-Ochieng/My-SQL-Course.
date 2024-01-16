select orderDate,
year(orderDate) as year, month(orderDate) as month, day(orderDate) as day
from orders;

select now();

select orderDate, requiredDate, datediff(requiredDate,orderDate) as days_before_required
from orders;

/*DATE_ADD AND DATE_SUB*/

select*, 
DATE_ADD(requiredDate, interval 1 year) as requiredDate_year_later,
date_sub(requiredDate, interval 2 month) as requiredDate_2months_before
from orders;