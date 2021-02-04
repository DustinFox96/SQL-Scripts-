select a.id, a.Lastname, b.Description
from Student a
 left join major b on a.MajorId = b.Id
where a.id <= 10;

select  *
from Student
where MajorId is null;