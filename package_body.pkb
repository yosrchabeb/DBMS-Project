--Package to Show letter grades per group ID and exam ID

CREATE OR REPLACE PACKAGE BODY letter_conversion AS
FUNCTION Letter_grade(num_grade IN INTEGER)
Return char
IS
letter Char;
BEGIN
CASE 
WHEN num_grade BETWEEN 0 AND 59 THEN letter:='F';
WHEN num_grade BETWEEN 60 AND 69 THEN letter:='D';
WHEN num_grade BETWEEN 70 AND 79 THEN letter:='C';
WHEN num_grade BETWEEN 80 AND 89 THEN letter:='B';
WHEN num_grade BETWEEN 90 AND 100 THEN letter:='A';
END CASE;
RETURN(letter);
END Letter_grade;

PROCEDURE l_grade(exid INTEGER,gid Varchar2)
IS
CURSOR student_lgrade IS
SELECT student.Student_ID,student_name,Num_Grade
FROM student,Grade
WHERE Grade.EXAM_ID=exid AND student.group_ID=gid AND student.student_ID=grade.student_ID;
idstudent student.student_ID%type;
ngrade grade.Num_Grade%type;
sname student.student_name%type;
lgrade CHAR;
BEGIN
open student_lgrade;
LOOP
FETCH student_lgrade INTO idstudent,sname,ngrade;
EXIT WHEN student_lgrade%notfound;
lgrade:= Letter_grade(ngrade);
dbms_output.put_line('Student ID '||idstudent||' student name '||sname||' Exam_ID '||exid||' Numerical grade '||ngrade||' letter grade '||lgrade);
END LOOP;
END l_grade;
END letter_conversion;
