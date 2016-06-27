CREATE TABLE announcement(
	Content varchar(50) not null,
	id integer not null,
	Data varchar(10) not null,
	Sender varchar(20) not null,
);	
INSERT INTO announcement(Content, ID, Data, Sender) VALUES ('content', 1, 'data', 'sender');
SELECT * FROM announcement;
UPDATE announcement SET Content='content' WHERE id=1;
UPDATE announcement SET Data='data' WHERE id=1;
UPDATE announcement SET Sender='sender' WHERE id=1;
DELETE FROM announcement where id=1;
