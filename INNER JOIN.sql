select *
from orders t1
inner join customers t2 
on t1.customerNumber= t2.customerNumber

*However, the columname customerNumber will appear twice in the joined table*
