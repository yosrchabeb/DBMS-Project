--Package to Show letter grades per group ID and exam ID


CREATE OR REPLACE PACKAGE letter_conversion AS
FUNCTION Letter_grade(num_grade IN INTEGER) RETURN NUMBER;
PROCEDURE l_grade(exid INTEGER,gid Varchar2);
END letter_conversion;
