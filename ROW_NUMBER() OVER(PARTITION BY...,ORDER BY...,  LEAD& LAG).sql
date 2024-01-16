select customerNumber, 
orderNumber,
row_number() over(partition by customerNumber order by orderNumber) as order_number
from orders
order by customerNumber, orderNumber;

/*To show the numbering of orders for each customer. i.e. */
select distinct
 t2.customerName,t2.customerNumber,t1.orderDate,t1.orderNumber,
row_number() over(partition by customerNumber order by orderDate) as order_no
from orders t1
inner join customers t2 on t1.customerNumber=t2.customerNumber
order by customerName;

/*To show each customers date of second purchase. 
Hint: the where clause wont work directly but it will work if we put it in a subquery or cte*/
with main_cte as(
select distinct
 t2.customerName,t2.customerNumber,t1.orderDate,t1.orderNumber,
row_number() over(partition by customerNumber order by orderDate) as order_no
from orders t1
inner join customers t2 on t1.customerNumber=t2.customerNumber
order by customerName)
select *
from main_cte
where order_no = 2 ;

/*To show the order of purchases of each customer per unique order. i.e same order.no ,same order date but now the products(prodcutnumbers) are different and thats whats is number*/
select distinct
 t3.customerName,t3.customerNumber,t2.orderDate,t2.orderNumber,productCode,
row_number() over(partition by customerNumber, t2.orderNumber order by orderDate) as order_no
from orderdetails t1
inner join orders t2 on t1.orderNumber=t2.orderNumber
inner join customers t3 on t2.customerNumber=t3.customerNumber
order by customerName;

/*To show the r of orders of each customer per product*/
select distinct
 t3.customerName,t3.customerNumber,t2.orderDate,t2.orderNumber,productCode,
row_number() over(partition by t1.productCode order by t2.orderDate) as order_no
from orderdetails t1
inner join orders t2 on t1.orderNumber=t2.orderNumber
inner join customers t3 on t2.customerNumber=t3.customerNumber
order by customerName;

/*LEAD*/
select*,
lead(amount) over(partition by customerNumber order by paymentDate) as next_amount
from payments;

/*LAG*/
select*,
lag(amount) over(partition by customerNumber order by paymentDate) as previous_amount
from payments;

/*Subttracting previous amount from amount*/
with main_cte as(
select*,
lag(amount) over(partition by customerNumber order by paymentDate) as previous_amount
from payments)
select *, abs(amount- previous_amount) as diff /*absolute diffrence*/
from main_cte;