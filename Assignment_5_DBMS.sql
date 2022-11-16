CREATE TABLE Circle(
	radius NUMBER,
	area NUMBER
); -- table to store radius & area

DECLARE
	radius_var NUMBER;
	area_var NUMBER;
	pi NUMBER := 3.14;
BEGIN
	FOR radius_var IN 5 .. 9 LOOP
		area_var := pi*radius_var*radius_var;
		dbms_output.put_line(area_var);
		INSERT INTO Circle VALUES (radius_var,area_var);
	END LOOP;

END;
/

SELECT * FROM Circle;