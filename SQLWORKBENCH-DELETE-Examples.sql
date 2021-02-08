


delete from student
where id in (
select id from student 
where GPA = 1.57 
and lastName = 'Fox' 
and Firstname = 'dusttiinn');


select * 
from Students