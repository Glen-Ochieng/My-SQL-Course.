select *
from customers
where  city  in
('New York',
'Mumbai',
'London');

select *
from customers
where  city not in
('New York',
'Mumbai',
'London');
