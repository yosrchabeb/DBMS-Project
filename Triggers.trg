-- different departments trigger
CREATE OR REPLACE TRIGGER department
BEFORE INSERT OR UPDATE ON assignation
FOR EACH ROW
DECLARE department1 invigilator.dep%type;
        department2 invigilator.dep%type;
BEGIN
SELECT invigilator.dep into department1 from invigilator where prof_id=:NEW.invigilator_ID;
SELECT examinator.dep into department2 from examinator where prof_id=:NEW.examinator_ID;
if (department1=department2)
THEN
RAISE_APPLICATION_ERROR(-20502,'Invigilators and examinators should be from different departments');
END IF;
END department;

insert into assignation values (1,'jun4',197300,145167,'Lab 5');


--groups limit trigger
CREATE OR REPLACE TRIGGER num_groups
BEFORE INSERT OR UPDATE ON assignation
FOR EACH ROW
DECLARE
ngroups INTEGER;
--Select num_seats from Class where class.Class_ID=:NEW.Class_ID
BEGIN
SELECT count(group_ID) into ngroups from assignation where Class_ID=:NEW.Class_ID group by Class_ID;
IF (ngroups=2)
THEN
IF INSERTING THEN
RAISE_APPLICATION_ERROR(-20502,'You cannot insert more than 2 groups');
ELSIF UPDATING THEN
RAISE_APPLICATION_ERROR(-20500,'You cannot update Class_group table,the classroom already has two groups');
END IF;
END if;
END;

insert into assignation values (6,'jun3',197300,104536,'Amphi 4');


-- number of seats limit trigger

CREATE OR REPLACE TRIGGER num_seats 
BEFORE INSERT OR UPDATE ON assignation
FOR EACH ROW
DECLARE
gid VARCHAR2(30);
somme INTEGER;
seats integer;
nstudents integer;
CURSOR search_groups IS SELECT assignation.group_ID,num_students from assignation,StudentsGroup where Class_ID=:NEW.Class_ID AND exam_ID=:NEW.exam_ID AND Assignation.group_ID=StudentsGroup.group_ID;
BEGIN
somme:=0;
OPEN search_groups;
LOOP
fetch search_groups into gid,nstudents;
EXIT when search_groups%notfound;
somme:=somme+nstudents;
END LOOP;
Select num_seats into seats from class where class_ID=:NEW.Class_ID;
if somme>=seats then 
RAISE_APPLICATION_ERROR(-20502,'Classroom has already reached its limits');
END IF;
END num_seats;

insert into assignation values (6,'jun3',197300,128646,'Amphi 4');
