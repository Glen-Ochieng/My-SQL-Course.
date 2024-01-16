/*Do not write is between or is > . Is is only used for null and not null*/
select  
case when creditLimit < 75000 then 'Less than $75k '
when creditLimit between 75000 and 100000 then '$75k-$100k '
when creditLimit between 100000 and 150000 then '$100k-$150k '
when creditLimit  > 150000 then 'Over $150k'
else 'Other'
end as credit_limit_classes,
count(distinct customerNumber ) as no_of_customers
from customers
group by credit_limit_classesorder by no_of_customers desc;

with main_cte as
(select
t1.orderNumber,
orderDate,
quantityOrdered,
productName,
productLine,
case when quantityOrdered> 40 and productLine=lower('motorcycles') then 1 
else 0
end as ordered_over_40_motorcycles

from orders t1
join orderdetails t2 on t1.orderNumber=t2.orderNumber 
join products t3 on t2.productCode=t3.productCode) 
select orderdate, sum(ordered_over_40_motorcycles) as over_40_bike_sales_per_day
from main_cte
group by orderdate


