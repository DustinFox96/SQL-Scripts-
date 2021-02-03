select  c.Subject, c.Section, concat(i.Lastname, ',', i.Firstname) as 'name',
	i.YearsExperience, i.IsTenured
from Class c
join Instructor i on i.id = c.instructorid
where i.YearsExperience = 9
order by i.Lastname, c.Subject


;
