CREATE TABLE TEACHER(

ID integer,

Name char(10),

EducationDegree varchar(30) not null,

NumberOfDeal integer,

WorkExperience integer
)

insert into TEACHER(ID,FirstName,LastName,EducationDegree,NumberOfDeal,WorkExperience) Values (1,'maryam','ebrahimi','MS',5,'10')

UPDATE TEACHER set NUMBEROFDEAL = 6 where id = 1

Delete From TEACHER where id = 1

select * from TEACHER
