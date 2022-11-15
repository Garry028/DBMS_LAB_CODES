CREATE TABLE Stu_info (
id INT PRIMARY KEY,
rollno INT NOT NULL,
name varchar(255),
email varchar(255)
);

INSERT INTO Stu_info (id,rollno,name,email) VALUES ('1','81','mihir','mihir@gmail.com');
INSERT INTO Stu_info (id,rollno,name,email) VALUES ('2','82','megha','megha@gmail.com');
INSERT INTO Stu_info (id,rollno,name,email) VALUES ('3','22','Garry','garry@gmail.com');
INSERT INTO Stu_info (id,rollno,name,email) VALUES ('4','98','madhur','madhur@gmail.com');
INSERT INTO Stu_info (id,rollno,name,email) VALUES ('5','95','mohit','mohit@gmail.com');

SELECT * FROM Stu_info ORDER BY id ASC;
SELECT name,email FROM Stu_info WHERE rollno='82';
SELECT * FROM Stu_info WHERE email='garry@gmail.com' AND  rollno='22'


desc Stu_info;


UPDATE Stu_info
	SET name = 'Lokesh',email = 'lokesh@gmail.com'
    WHERE id = 4;

DELETE FROM Stu_info WHERE name= 'megha' OR rollno='82';
DELETE FROM Stu_info WHERE name='Garry' AND rollno='22';

UPDATE Stu_info
     SET name = 'sanket',email = 'sanket@gmail.com'
     WHERE id = 1 AND rollno= '81';