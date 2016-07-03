INSERT INTO "PUBLIC"."course" ( "id", "Exams","Teacher","Student" ) VALUES (1,"28 khordad"," aghaye rezayi","mahya saeednejad, nadia ghobadi pasha")
INSERT INTO "PUBLIC"."course" ( "id", "Exams","Teacher","Student" ) VALUES (2,"5 khordad"," aghaye rezayi","mahdis vijegan, mohammad azadeh")
INSERT INTO "PUBLIC"."course" ( "id", "Exams","Teacher","Student" ) VALUES (3,"3 shahrivar"," aghaye rezayi","tara hariri, alireza ahangari")

INSERT INTO "PUBLIC"."announcement" ( "id","content", "Date","Sender") VALUES (1,"summer class witll start 1st june","2 ordibehesht"," khanome ghadimi")
INSERT INTO "PUBLIC"."announcement" ( "id","content", "Date","Sender") VALUES (2,"summer class will start 1st june","13/12/95"," maryam azadegan")
INSERT INTO "PUBLIC"."announcement" ( "id","content", "Date","Sender") VALUES (3,"midterms start at 10 january and end 20 january","3 dey"," khanome hoseini")

INSERT INTO "PUBLIC"."assignment" ( "id", "AssignmentNumber","courseName","Deadline","Content") VALUES (1,"1","riazi"," seshanbe","tamrinat fasle 2")
INSERT INTO "PUBLIC"."assignment" ( "id", "AssignmentNumber","courseName","Deadline","Content") VALUES (2,"2","riazi"," 5shanbe","tamrinat fasle 3")
INSERT INTO "PUBLIC"."assignment" ( "id", "AssignmentNumber","courseName","Deadline","Content") VALUES (3,"1","farsi"," shanbe","jomle sazi")

INSERT INTO "PUBLIC"."Student" ( "id","FatherworkAddress", "FatherEducationDegree","StudentNumber","Grade") VALUES (1,"meydan enghelab eslami,sherkate hamlonaghl iran","lisans","610391086","1 highschool")
INSERT INTO "PUBLIC"."Student" ( "id","FatherworkAddress", "FatherEducationDegree","StudentNumber","Grade") VALUES (2,"meydan enghelab, daneshgah tehran","PhD","610391108","2 highschool")
INSERT INTO "PUBLIC"."Student" ( "id","FatherworkAddress", "FatherEducationDegree","StudentNumber","Grade") VALUES (3,"meydan valiasr, bimarestan sadra","doctoraye takhasasi","610391076","3 highschool")

INSERT INTO "PUBLIC"."Score" ( "id","CreateActivetieScore", "ExamScore","TotalScore") VALUES (1,18,18, 19)
INSERT INTO "PUBLIC"."Score" ( "id","CreateActivetieScore", "ExamScore","TotalScore") VALUES (2,20,20, 20)
INSERT INTO "PUBLIC"."Score" ( "id","CreateActivetieScore", "ExamScore","TotalScore") VALUES (3,15,16, 16)

INSERT INTO "PUBLIC"."Parent" ( "id","FamilyNameStudent","StudentNumber","PostalCode") VALUES (1,"saeednejad",001876534,123456)
INSERT INTO "PUBLIC"."Parent" ( "id","FamilyNameStudent","StudentNumber","PostalCode") VALUES (2,"kazempour",001879800,78901)
INSERT INTO "PUBLIC"."Parent" ( "id","FamilyNameStudent","StudentNumber","PostalCode") VALUES (3,"ghobadi",001876599,246810)

INSERT INTO "PUBLIC"."Admin" ( "id","firstname","lastname","username","password","fathername","address","email","ssn","phone","birthday") VALUES (1,"mahya","saeednejad","mahya1372","1234","amir","newyork street","msaeednejad@ut.ac.ir","001568723",0912345678")

INSERT INTO "PUBLIC"."Assistant" ( "id","WorkExperience") VALUES (1,"3sal sabeghe hesabdari dar madreseye helli")

INSERT INTO "PUBLIC"."EvaluationTeacher" ( "id","TeacherID","StudentID","Date","Content") VALUES (1,1234,610391076,"3/3/95","amalkard moalem khodra chegone arzyabi mikonid?, raftar moalem ta che mizan dostane ast?")
INSERT INTO "PUBLIC"."EvaluationTeacher" ( "id","TeacherID","StudentID","Date","Content") VALUES (2,1234,610391086,"3/3/95","amalkard moalem khodra chegone arzyabi mikonid?, raftar moalem ta che mizan dostane ast?")
INSERT INTO "PUBLIC"."EvaluationTeacher" ( "id","TeacherID","StudentID","Date","Content") VALUES (3,5678,610391076,"3/3/95","amalkard moalem khodra chegone arzyabi mikonid?, raftar moalem ta che mizan dostane ast?")

INSERT INTO "PUBLIC"."Teacher" ( "id","TeacherID","EducationDegree","NumberOfDeal","WorkExperience") VALUES (1,1234,"lisans riazi","2","5 sal tadris")
INSERT INTO "PUBLIC"."Teacher" ( "id","TeacherID","EducationDegree","NumberOfDeal","WorkExperience") VALUES (2,5678,"lisans zisshenasi","3","5 sal tadris dar madrese rozbeh")
INSERT INTO "PUBLIC"."Teacher" ( "id","TeacherID","EducationDegree","NumberOfDeal","WorkExperience") VALUES (3,1256,"lisans adaviat","1","5 sal tadris khososi")

INSERT INTO "PUBLIC"."User" ( "id","firstname","lastname","username","password","fathername","address","email","ssn","phone","birthday") VALUES (1,"mahya","saeednejad","mahya1372","1234","amir","khiabane kargar","msaeednejad@ut.ac.ir","0016581733","0912876735","13/10/72")
INSERT INTO "PUBLIC"."User" ( "id","firstname","lastname","username","password","fathername","address","email","ssn","phone","birthday") VALUES (2,"nadia","ghobadi pasha","nadia1372","1234","ali","meydan basij","nadiaghobadipasha@gmail.com","001234567","09123264764","22/10/72")
INSERT INTO "PUBLIC"."User" ( "id","firstname","lastname","username","password","fathername","address","email","ssn","phone","birthday") VALUES (3,"mahdis","vijegan","mahdis1371","hosein","gholhak","mahdisvijegan@yahoo.com","001987834","0910234543","15/10/71")