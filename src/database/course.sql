CREATE TABLE course(
	id integer not null,
	Assignment varchar(50) not null,
	Exams varchar(50) not null,
	Teacher varchar(20) not null,
	Student varchar(20) not null,
);
INSERT INTO course(id ,Assignment, Exams, Teacher, Student) VALUES (1 ,'assignment', 'exams', 'teacher', 'student');
SELECT FROM course WHERE id = 1;
UPDATE course SET Assignment='assignmen't WHERE id = 1;
UPDATE course SET Exams='exams' WHERE id = 1;
UPDATE course SET Teacher='teacher' WHERE id = 1;
UPDATE course SET Student='student' WHERE id = 1;
DELETE FROM course WHERE id = 1;
