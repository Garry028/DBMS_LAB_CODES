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


 CREATE TABLE info(
     id INT PRIMARY KEY,
     rollno INT NOT NULL,
     name VARCHAR(255)
);

---- sequence
CREATE TABLE info_main(
     id_seq INT PRIMARY KEY,
     rollno INT NOT NULL,
     name VARCHAR(255)
);


CREATE SEQUENCE id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 100
    CYCLE
    CACHE 2;



INSERT INTO info_main (id_seq,rollno, name) VALUES (id_seq.NEXTVAL,'081','mihir');
INSERT INTO info_main (id_seq,rollno, name) VALUES (id_seq.NEXTVAL,'082','megha');
INSERT INTO info_main (id_seq,rollno, name) VALUES (id_seq.NEXTVAL,'083','sanket');

select * from info_main;


-- synonym is replica of the StudentInfo table
CREATE synonym student for student_info;

desc student;


SELECT * FROM info;
