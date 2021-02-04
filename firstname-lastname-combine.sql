select c.code, c.Subject, concat(i.firstname, ',', i.lastname) as name, i.YearsExperience
from class c
join instructor i on i.id = c.InstructorId
where i.YearsExperience > 5
order by i.YearsExperience desc




;