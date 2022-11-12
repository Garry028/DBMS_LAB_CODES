CREATE TABLE stud_marks_final
(
FullName VARCHAR2(25),
total_marks NUMBER
);

CREATE TABLE result_final
(
roll_number NUMBER ,
FullName VARCHAR2(25),
class VARCHAR2(30)
);


CREATE OR REPLACE PROCEDURE procedure_1
(roll_no IN NUMBER, FullName IN VARCHAR2 ,marks IN NUMBER)
AS
BEGIN
	IF (marks<=1500 and marks>=990) THEN
		DBMS_OUTPUT.PUT_LINE (roll_no||' - '||FullName||' : DISTINCTION');
        INSERT INTO result_final VALUES (roll_no,FullName,'DISTINCTION');
	ELSIF (marks<=989 and marks>=900) THEN
		DBMS_OUTPUT.PUT_LINE (roll_no||' - '||FullName||' : FIRST CLASS');
        INSERT INTO result_final VALUES (roll_no,FullName,'FIRST CLASS');
	ELSIF (marks<=899 and marks>825) THEN
		DBMS_OUTPUT.PUT_LINE(roll_no||' - '||FullName||' : HIGHER SECOND CLASS');
        INSERT INTO result_final VALUES (roll_no,FullName,'HIGHER SECOND CLASS');
	ELSE
		DBMS_OUTPUT.PUT_LINE (roll_no||' - '||FullName||' : FAIL');
        INSERT INTO result_final VALUES (roll_no,FullName,'FAIL');
	END IF;
    	INSERT INTO stud_marks_final VALUES (FullName,marks);
END procedure_1;

BEGIN
	procedure_1(1,'Garry',80);
	procedure_1(2,'Abbas ',20);
	procedure_1(3,'Sohum ',50);
	procedure_1(4,'Itachi ',70);
END;

