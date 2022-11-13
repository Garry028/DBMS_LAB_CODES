-- Commented querys did not work in oracle

-- show databases;
-- CREATE DATABASE ddl_commands;
-- use ddl_commands;

CREATE TABLE student_info(
     rollno INT PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      email VARCHAR(255)
);

desc student_info;

-- show tables;

CREATE VIEW view_student_info as (
    select rollno from student_info
);

desc view_student_info;

CREATE INDEX ind_name ON student_info(name);

-- sequence
 CREATE TABLE info(
     id INT PRIMARY KEY,
     rollno INT NOT NULL,
     name VARCHAR(255)
);



-- show tables;

INSERT INTO info (id,rollno, name) VALUES ('1','081','mihir');
INSERT INTO info (id,rollno, name) VALUES ('2','082','megha');
INSERT INTO info (id,rollno, name) VALUES ('3','083','sanket');

SELECT * FROM info;