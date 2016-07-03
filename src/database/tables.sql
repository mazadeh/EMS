CREATE TABLE course(
	id integer IDENTITY PRIMARY KEY,
	Assignment varchar(50) not null,
	Exams DATE not null,
	Teacher varchar(100) not null,
	Student varchar(20000) not null,
);

CREATE TABLE announcement(
	id integer IDENTITY PRIMARY KEY,
	Content varchar(50000) not null,
	Data varchar(10) not null,
	Sender varchar(100) not null,
);	

CREATE TABLE assignment(
id integer IDENTITY PRIMARY KEY,
AssignmentNumber varchar(5) not null,
CourseName varchar(100) not null,
Deadline varchar(10) not null,
Content varchar(5000),
Attachment varchar(50) not null,
);

CREATE TABLE STUDENT(
id integer IDENTITY PRIMARY KEY references User(id), 
FatherWorkAddress varchar(3000),
FatherEducationDegree varchar(300),
StudentNumber integer not null,
Grade CHAR(5) not null
);

CREATE TABLE SCORE(
id integer IDENTITY PRIMARY KEY,
CreateActivtiScore integer,
ExamScore integer,
TotalScore integer
);

CREATE TABLE Parent(
id integer IDENTITY PRIMARY KEY references User(id),
FamilyNameStudent CHAR(200) not null,
StudentNumber integer not null,
SSNFather integer,
SSNMother integer,
GradeOfChild CHAR(10),
PostalCode integer
);

CREATE TABLE Admin(
id integer IDENTITY PRIMARY KEY references User(id),
WorkExperience CHAR(4000)
);
CREATE TABLE Assistant(
id integer IDENTITY PRIMARY KEY references User(id),
WorkExperience CHAR(4000)
);

CREATE TABLE EvaluationTeacher(
id integer IDENTITY PRIMARY KEY,
TeacherID integer,
StudentID integer,
Date DATE,
Content varchar(50000)
);

CREATE TABLE TEACHER(
id integer IDENTITY PRIMARY KEY references User(id),
Name char(100),
EducationDegree varchar(300) not null,
NumberOfDeal integer,
WorkExperience integer
);

CREATE TABLE user (
id integer IDENTITY PRIMARY KEY,
firstname varchar(200) not null, 
lastname varchar(200) not null, 
username varchar(200) not null unique, 
password varchar(200) not null,
fathername varchar(200) not null,
address varchar(400) not null,
email varchar(200) not null,
ssn varchar(100) not null,
phone varchar (200) not null,
birthday varchar(200) not null
);