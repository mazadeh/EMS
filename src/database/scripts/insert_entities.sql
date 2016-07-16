INSERT INTO ems.users (username, Password) VALUES ('repouser', 'repopwd');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES ('امیرحسین', '‍‍پروردی', 'parvardi', '1234','بهمن','اراک','parvardi@ut.ac.ir','4120447431','09120370953','1373/07/10');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES ('دامون', 'ربیع', 'damoonr', '1234','حسن','میرداماد','damoonr@ut.ac.ir','2120883497','0910876345','1373/04/01');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES ('امیرحسین', 'کاظمی نیا', 'amirhoseink94', '1234','علی','تهران پارس','amirhoseink94@ut.ac.ir','00134567822','09102345123','1373/03/28');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES ('مهیا', 'سعیدنژاد', 'mahya1372', '1234', 'امیر', 'خیابان کارگر شمالی', 'msaeednejad@ut.ac.ir', '0016581733', '0912876735', '13/10/72');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES (' نادیا', 'قبادی پاشا', 'nadia.gh', '1234', 'رحمت', 'بهارشیراز', 'nadia.ghobadipasha@gmail.com', '2150325497', '09120370954', '1372/10/22');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES (' مهدیس سادات', 'ویژگان', 'm.vijegan', '1234', 'محمود', 'شریعتی', 'm.vijegan@ut.ac.ir', '1234567890', '0912876735', '1371/10/15');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES (' تارا', 'حریری', 'tara_hariri', '1234', 'باقر', 'سعادت‌آباد', 'tara_hariri@ut.ac.ir', '1234567891', '0912876736', '1372/7/15');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES (' محمد', 'آزاده', 'mazadeh', '1234', 'علی', 'قلهک', 'm.azadeh@ut.ac.ir', '987654321', '0912876250', '1372/11/15');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES (' امید', 'آهنگری', 'omid_ah', '1234', 'امیر', 'شریعتی', 'omid_ah@ut.ac.ir', '1234567898', '0912876210', '1371/5/15');
INSERT INTO ems.users (firstname, lastname, username, password, father_name, address, email, ssn, phone, birthday) VALUES ('مرجانه', 'حسینی', 'marjane', '1234', 'کامران', 'نیاوران', 'marjane@ut.ac.ir', '00176874456', '09123596745', '1371/8/20');


INSERT INTO ems.user_roles(username, user_role) VALUES ('repouser', 'manager-gui');
INSERT INTO ems.user_roles(username, user_role) VALUES ('repouser', 'manager-script');
INSERT INTO ems.user_roles(username, user_role) VALUES ('marjane', 'manager');
INSERT INTO ems.user_roles(username, user_role) VALUES ('parvardi', 'teacher');
INSERT INTO ems.user_roles(username, user_role) VALUES ('amirhoseink94', 'teacher');
INSERT INTO ems.user_roles(username, user_role) VALUES ('damoonr', 'teacher');
INSERT INTO ems.user_roles(username, user_role) VALUES ('mahya1372', 'student');
INSERT INTO ems.user_roles(username, user_role) VALUES ('m.vijegan', 'student');
INSERT INTO ems.user_roles(username, user_role) VALUES ('nadia.gh', 'student');
INSERT INTO ems.user_roles(username, user_role) VALUES ('tara_hariri', 'student');
INSERT INTO ems.user_roles(username, user_role) VALUES ('mazadeh', 'student');
INSERT INTO ems.user_roles(username, user_role) VALUES ('omid_ah', 'student');


INSERT INTO ems.assignment(assignment_number, course_name, deadline, content, attachment, assignment_role) VALUES (1, 'ریاضی', '1395/05/10 23:50', 'تمرینات مشتق', './files/assignments/ex.1.pdf', 'teacher')
INSERT INTO ems.assignment(assignment_number, course_name, deadline, content, attachment, assignment_role) VALUES (2, 'فیزیک', '1395/09/10 23:50', 'تمرینات نوسان', './files/assignments/ex.2.pdf', 'teacher')

commit;