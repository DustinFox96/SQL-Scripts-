select * 
from Customers;

select *
from orders;

select *
from Customers A 
left join Orders B on B.CustomerId = A.Id
left join OrderLines C on C.OrdersId = B.Id
order by A.Name


select *
from Customers
where Sales > (select avg(sales) from Customers);

select avg(sales) 
from Customers;

select *
from Orders
where date <= '2018-12-31 23:59:59';

select *
from orders
where date >= '2018-01-01 00:00:00' and date <= '2018-12-31 23:59:59'

select *
from orders
where date >= '2019-04-01 00:00:00' and date <= '2019-06-30 23:59:59'

declare @lowdate datetime = '2017-10-01 00:00:00'
declare @highdate datetime = '2017-12-31 23:59:59'

select *
from orders
where date >= @lowdate
	and date <= @highdate

	