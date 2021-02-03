select *
from major m
join MajorClass mc on mc.MajorId = m.id
join class c on c.Id = mc.ClassId
join Instructor i on i.id = c.InstructorId
;