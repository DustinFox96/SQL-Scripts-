select s.id, concat(s.firstname, ' ' , s.lastname) as 'name', 
	s.gpa, s.sat, 
	m.Description as 'major'
from student s
join major m
on s.majorID = m.id
where s.gpa >= 3.5 and (s.majorID = 3 or s.majorID = 5)
order by s.gpa desc, s.sat desc 

;