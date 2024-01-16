select paymentDate, amount
from payments;

select paymentDate, sum(amount) as totalpayment
from payments
group by paymentDate;

select paymentDate, round(sum(amount),1) as totalpayment
from payments
group by paymentDate
having totalpayment > 50000
order by paymentDate desc;

select paymentDate, round(sum(amount),1) as totalpayment
from payments
group by paymentDate
having paymentDate > '2005-01-01'
order by paymentDate desc;
