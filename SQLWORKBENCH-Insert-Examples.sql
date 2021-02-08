select *
from student;

INSERT student 
	(Firstname, Lastname, SAT, GPA, MajorId)
VALUES
		('Mary', 'Jane', 980, 2.7, 
			(Select Id From Major Where Description = 'Engineering')
            );