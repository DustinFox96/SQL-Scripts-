

update student set
	GPA = GPA * 1.1
	Where Id > 0;
select lastname, GPA, GPA * 1.1
from student;