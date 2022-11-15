CREATE TABLE student_info (
id INT AUTO_INCREMENT PRIMARY KEY,
rollno INT NOT NULL,
name varchar(255),
email varchar(255)
);

INSERT INTO student_info (rollno,name,email) VALUES ('81','mihir','mihir@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('82','megha','megha@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('22','Garry','garry@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('98','madhur','madhur@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('95','mohit','mohit@gmail.com');

SELECT * FROM student_info;
SELECT name FROM student_info WHERE rollno="82"
SELECT * FROM student_info WHERE email="garry@gmail.com" AND  rollno="22"


desc student_info;


UPDATE student_info
	SET name = 'madhur',email = 'madhur@gmail.com'
    WHERE id = 4;

DELETE FROM student_info WHERE name= 'megha' OR rollno="82";
DELETE FROM student_info WHERE name= 'megha' AND name="mihir";

UPDATE student_info
     SET name = 'sanket',email = 'sanket@gmail.com'
     WHERE id = 1 AND rollno= '81';