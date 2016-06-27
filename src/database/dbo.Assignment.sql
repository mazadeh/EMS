CREATE TABLE assignment(
AssignmentNumber varchar(5) not null,
CourseName varchar(20) not null,
Deadline varchar(10) not null,
Content varchar(30),
Attachment varchar(50) not null,
);
INSERT INTO assignment(AssignmentNumber, CourseName, Deadline, Content, Attachment) VALUES ('1', 'coursename', 'deadline', 'content', 'attachment');
SELECT * FROM assignment;
UPDATE assignment SET Content='content' where AssignmentNumber = 1;
UPDATE assignment SET CourseName='coursename' where AssignmentNumber = 1;
UPDATE assignment SET Deadline='deadline' where AssignmentNumber = 1;
UPDATE assignment SET Attachment='attachment' where AssignmentNumber = 1;
DELETE FROM user WHERE id=1;
