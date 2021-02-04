/* create scripts with a paraneter for customer sales.
	the query will display all customers with sales
	less then the value of the parameter
	*/

declare @custsaleslow decimal(9,2) = 20000
declare @custsaleshigh decimal(9,2) = 30000




	select *
	from Customers
	where  sales between @custsaleslow and @custsaleshigh;