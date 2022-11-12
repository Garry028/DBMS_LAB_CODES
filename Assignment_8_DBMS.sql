-- the values in backup table are inserted only when the update or delete operation happen on Library
CREATE TABLE Library
(
Book_Id NUMBER(5),
Book_Name VARCHAR2(20),
Book_Type VARCHAR2(20),
Issued_By VARCHAR2(20)
);

INSERT INTO Library VALUES (1,'Harry Potter','Fiction','Garry');
INSERT INTO Library VALUES (2,'The Alchemist','Fiction','Abbas');
INSERT INTO Library VALUES (3,'The Monk Who Sold His Ferrari','Fiction','Sohum');
INSERT INTO Library VALUES (4,'The Secret','Fiction','Itachi');


CREATE TABLE Back_UP
(
Book_Id NUMBER(5),
Book_Name VARCHAR2(20),
Book_Type VARCHAR2(20),
Issued_By VARCHAR2(20)
);


CREATE TRIGGER Update_Rec
AFTER UPDATE OR DELETE ON Library
FOR EACH ROW
BEGIN
INSERT INTO Back_UP
(Book_Id, Book_Name, Book_Type, Issued_By)
VALUES
(:old.Book_Id, :old.Book_Name, :old.Book_Type, :old.Issued_By);
END;

-- this will trigger the trigger method
UPDATE Library
SET Issued_By = 'Eleven'
WHERE Issued_By = 'Itachi';

SELECT * FROM Back_UP;

