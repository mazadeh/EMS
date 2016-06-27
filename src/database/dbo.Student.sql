CREATE TABLE STUDENT(

ID integer,

FatherWorkAddress varchar(30),

FatherEducationDegree varchar(30),

StudentNumber integer not null,

Grade CHAR(5) not null
)

insert into STUDENT(ID,FatherWorkAddress,FatherEducationDegree,StudentNumber ,Grade) Values (1,'shariati','Bachelor','258','A')

UPDATE STUDENT set GRADE = 'B' where id = 1

Delete From STUDENT where id = 1

select * from STUDENT