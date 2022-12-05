--Students with best grade given a specific group number & exam ID

CREATE OR REPLACE Procedure Best_students(Examid exam.exam_ID%type,gid student.group_ID%type)
IS
CURSOR best_st IS SELECT student.student_id,student_name,age,email,num_grade from grade,student where (num_grade=(select max(num_grade) 
from grade,student where exam_id=Examid AND student.group_id=gid AND student.student_ID=grade.student_ID)) AND student.student_ID=grade.student_ID; 
ID student.student_id%type;
Name student.student_name%type;
Age student.Age%type;
Email student.email%type;
ngrade grade.num_grade%type;
BEGIN
open best_st;
LOOP
fetch best_st into id,name,age,email,ngrade;
EXIT WHEN best_st%notfound;
dbms_output.put_line('Student with id '||id||' name '||name||' age '||age||' email address '||email||' has best score of '||ngrade );
END LOOP;
END Best_students;

SET SERVEROUTPUT ON;
EXECUTE Best_students(6,'jun4');