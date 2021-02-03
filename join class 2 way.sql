select * 
from class c
join MajorClass mc on mc.ClassId = c.id
join major m on m.Id = mc.MajorId
