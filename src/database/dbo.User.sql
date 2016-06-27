CREATE TABLE user (
id integer not null,
firstname varchar(20) not null, 
lastname varchar(20) not null, 
username varchar(20) not null unique, 
password varchar(20) not null,
fathername varchar(20) not null,
address varchar(40) not null,
email varchar(20) not null,
ssn varchar(10) not null,
phone varchar (20) not null,
);
INSERT INTO user(id, firstname, lastname, username, password, fathername, address, email, ssn, phone) values(
		1, 'firstname', 'lastname', 'username', 'password', 'fathername', 'address', 'email', 'ssn', 'phone');

SELECT * FROM user;
DELETE FROM user WHERE id = 1;
UPDATE user SET firstname='firstname' WHERE id=1;
UPDATE user SET lastname='lastname' WHERE id=1;
UPDATE user SET username='username' WHERE id=1;
UPDATE user SET password='password' WHERE id=1;
UPDATE user SET fathername='fathername' WHERE id=1;
UPDATE user SET address='address' WHERE id=1;
UPDATE user SET email='email' WHERE id=1;
UPDATE user SET phone='phone' WHERE id=1;
