select s.*, m.Id as MarjorId, m.code, m.Description, m.MinSAT
--into ##Becca -- Temp table until system is rebooted
--into #Becca -- Temp table for session only
from Student s
join major m on s.MajorId = m.Id
--where majorid = 3					-- Not descriptive, but probably indexed
--where m.Description = 'Finance';	-- Descriptive, but probably not indexed
Where m.Code = 'FIN'				-- Descriptive, probably indexed

select *
from #Becca;




select top 1 * from Student
select top 1 * from major


select * 
from Student s
join Major m on s.MajorId = m.Id
left join StudentClass sc on s.Id = sc.StudentId

-- All the Majors with no students
select * 
from Student s
Right join Major m on s.MajorId = m.Id
Where s.id is null


Select * from Major A where A.Code in ( 'ull','Ulloa')
Select * from Major A where A.Code = 'ull'
Delete A from Major A Where A.Code = 'ull'

Insert into Major (Code, Description, MinSAT)
Values('Ull', 'Ulloa Software Development', 300)