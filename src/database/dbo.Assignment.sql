CREATE TABLE [dbo].[Assignment](
[AssignmentNumber] INT,
[CourseName] NCHAR(20),
[Deadline] DATE,
[Content] TEXT,
[Attachment] FILE
)

INSERT INTO Assignment(AssignmentNumber, CourseName, Deadline, Content, Attachment) VALUES ("assignmentnumber" , "coursename", "deadline", "content", "attachment")
DELETE FROM Assignment WHERE ID = "id"