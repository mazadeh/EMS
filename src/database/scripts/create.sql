CREATE SCHEMA ems;

CREATE TABLE IF NOT EXISTS ems.users (
	id INTEGER IDENTITY PRIMARY KEY,
	firstname VARCHAR(200), 
	lastname VARCHAR(200), 
	username VARCHAR(200) NOT NULL UNIQUE,
	password VARCHAR(200) NOT NULL,
	father_name VARCHAR(200),
	address VARCHAR(400),
	email VARCHAR(200),
	ssn VARCHAR(100),
	phone VARCHAR (200),
	birthday VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS ems.user_roles (
	id integer identity primary key,
	username VARCHAR(100) NOT NULL,
	user_role VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS ems.assignment(
	id integer IDENTITY PRIMARY KEY,
	assignment_number VARCHAR(5),
	course_name VARCHAR(100),
	deadline VARCHAR(20),
	content VARCHAR(5000),
	attachment VARCHAR(100),
	assignment_role VARCHAR(100)
);

commit;