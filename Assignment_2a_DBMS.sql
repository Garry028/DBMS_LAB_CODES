CREATE TABLE student_info(
      rollno INT PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      email VARCHAR(255)
);

desc student_info;

CREATE VIEW view_student_info as (
    select rollno from student_info
);

desc view_student_info;

-- like this index is created
CREATE INDEX ind_name ON student_info(name);

-- like this we can delete index
ALTER TABLE student_info
DROP INDEX ind_name;

-- sequence
 CREATE TABLE info(
     id INT PRIMARY KEY,
     rollno INT NOT NULL,
     name VARCHAR(255)
);


INSERT INTO info (id,rollno, name) VALUES ('1','081','mihir');
INSERT INTO info (id,rollno, name) VALUES ('2','082','megha');
INSERT INTO info (id,rollno, name) VALUES ('3','083','sanket');


-- synonym is replica of the StudentInfo table
CREATE synonym student for student_info;

desc student;


SELECT * FROM info;
