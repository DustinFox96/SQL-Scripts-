select city, count(*) as 'nbr of customers', sum(sales) as 'sales',
	avg(sales) as 'average of sale'
from Customers
group by city
 


 /* average GPA for all students */
 /* now label it by states*/

select statecode, avg(GPA)
from Student
group by statecode;
 
 /*the average of major*/
 /* having the average of GPA 3.0*/

 select B.Description as 'major', avg(GPA)
	from Student A
	join Major B on B.id = A.MajorId
	group by B.Description
	having avg(gpa) >= 3.0
	


select statecode, count(*)
from Student
group by StateCode
having count(*) >50

