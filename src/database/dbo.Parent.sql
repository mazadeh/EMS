CREATE TABLE Parent(
ID integer,
FamilyNameStudent CHAR(20) not null,
StudentNumber integer not null,
SSNFather integer,
SSNMother integer,
GradeOfChild CHAR(10),
PostalCode integer
)
insert into PARENT (ID, FamilyNameStudent,StudentNumber,SSNFather, SSNMother,GradeOfChild,PostalCode) values(1,'ghobadi','1231','159','456','A','044')
UPDATE PARENT set SSNFATHER = 148 where id = 1
Select * from PARENT
Delete From PARENT where id = 1