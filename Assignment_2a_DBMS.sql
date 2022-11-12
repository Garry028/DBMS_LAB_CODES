show databases;
CREATE DATABASE ddl_commands;
use ddl_commands;

CREATE TABLE student_info(
     rollno INT PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      email VARCHAR(255)
);
    
desc student_info;

show tables;
    
CREATE VIEW view_student_info as (
    select rollno from student_info
);

desc view_student_info;

CREATE INDEX ind_name ON student_info(name);

SELECT * from student_info;

-- sequence 
 CREATE TABLE info(
     id INT AUTO_INCREMENT PRIMARY KEY,
     rollno INT NOT NULL,
     name VARCHAR(255)
);

show tables;

INSERT INTO info (rollno, name) VALUES ('081','mihir');
INSERT INTO info (rollno, name) VALUES ('082','megha');
INSERT INTO info (rollno, name) VALUES ('083','sanket');
INSERT INTO student_info(rollno,name,email) VALUES("12","Garry","gmisal2002@gmail.com");
INSERT INTO student_info(rollno,name,email) VALUES("19","Harry","Hmisal2002@gmail.com");
INSERT INTO student_info(rollno,name,email) VALUES("22","Carry","Cmisal2002@gmail.com");



SELECT * FROM info;