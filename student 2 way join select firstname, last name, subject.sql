select s.Firstname, s.Lastname, c.Subject, c.Section
	from student s
	join studentclass sc on sc.StudentId = s.Id
	join class c on c.id =sc.classid 
	where c.Subject = 'english'