show databases;
create database dml_commands;
use dml_commands;

CREATE TABLE student_info (
id INT AUTO_INCREMENT PRIMARY KEY,
rollno INT NOT NULL,
name varchar(255),
email varchar(255)
);

show tables;
INSERT INTO student_info (rollno,name,email) VALUES ('81','mihir','mihir@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('82','megha','megha@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('22','Garry','garry@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('98','madhur','madhur@gmail.com');
INSERT INTO student_info (rollno,name,email) VALUES ('95','mohit','mohit@gmail.com');
select * from student_info;
desc student_info;

UPDATE student_info
	SET name = 'madhur',email = 'madhur@gmail.com'
    WHERE id = 4;

DELETE FROM student_info WHERE name= 'megha';

UPDATE student_info
     SET name = 'sanket',email = 'sanket@gmail.com'
     WHERE id = 1 AND rollno= '81';