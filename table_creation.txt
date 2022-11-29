-- Drop tables --

DROP TABLE Assignation;
DROP TABLE Examinator;
DROP TABLE Invigilator;
DROP TABLE Grade;
DROP TABLE Exam;
Drop Table Class;
Drop TABLE Course;
Drop Table Student;
Drop Table StudentsGroup;

Drop SEQUENCE exam_id;
Drop SEQUENCE grade_id;

-- Create tables section -------------------------------------------------

-- Table Examinator

CREATE TABLE Examinator(
prof_ID Integer NOT NULL,
prof_name Varchar2(30 ) NOT NULL,
Working_hours Integer NOT NULL,
Age Integer,
Email Varchar2(30 ),
Dep Varchar2(30 ) NOT NULL);


-- Add keys for table Examinator

ALTER TABLE Examinator ADD ( CONSTRAINT Unique_Identifier3 PRIMARY KEY (prof_ID));

-- Table Invigilator

CREATE TABLE Invigilator(
prof_ID Integer NOT NULL,
prof_name Varchar2(30 ) NOT NULL,
Working_hours Integer NOT NULL,
Age Integer,
Email Varchar2(30 ),
Dep Varchar2(30 ) NOT NULL);


-- Add keys for table Invigilator

ALTER TABLE Invigilator ADD ( CONSTRAINT Unique_Identifier4 PRIMARY KEY (prof_ID));

-- Table Grade

create sequence grade_id minvalue 1 start with 1;
CREATE TABLE Grade(
Grade_ID Number(10,2) DEFAULT grade_id.nextval NOT NULL,
Num_Grade Integer NOT NULL,
Exam_ID Integer NOT NULL,
Student_ID Integer NOT NULL);

-- Add keys for table Grade

ALTER TABLE Grade ADD ( CONSTRAINT Unique_Identifier5 PRIMARY KEY (Grade_ID));

-- Table Exam

create sequence exam_id minvalue 1 start with 1;
CREATE TABLE Exam(
Exam_ID Integer DEFAULT exam_id.nextval NOT NULL,
Exam_name Varchar2(30 ) NOT NULL,
Duration Integer NOT NULL,
Date_Time TIMESTAMP NOT NULL,
Course_ID Varchar2(30) NOT NULL);

-- Add keys for table Exam

ALTER TABLE Exam ADD ( CONSTRAINT Unique_Identifier6 PRIMARY KEY (Exam_ID));

-- Table Student

CREATE TABLE Student(
Student_ID Integer NOT NULL,
Student_name Varchar2(30 ) NOT NULL,
Age Integer NOT NULL,
Email Varchar2(30 ) NOT NULL,
Group_ID Varchar2(30) NOT NULL);

-- Add keys for table Student

ALTER TABLE Student ADD ( CONSTRAINT Unique_Identifier7 PRIMARY KEY (Student_ID));


-- Table Course

CREATE TABLE Course(
Course_ID Varchar2(30) NOT NULL,
Course_name Varchar2(30 ) NOT NULL,
Course_Dep Varchar2(30 ) NOT NULL);

-- Add keys for table Course

ALTER TABLE Course ADD ( CONSTRAINT Unique_Identifier8 PRIMARY KEY (Course_ID));

-- Table StudentsGroup

CREATE TABLE StudentsGroup(
Group_ID Varchar2(30) NOT NULL,
g_Level Varchar2(30) NOT NULL,
Speciality Varchar2(30) NOT NULL,
Num_students Integer NOT NULL);

-- Add keys for table StudentsGroup

ALTER TABLE StudentsGroup ADD ( CONSTRAINT Unique_Identifier9 PRIMARY KEY (Group_ID));

-- Table Class

CREATE TABLE Class(
Class_ID Varchar2(30) NOT NULL,
Num_seats Integer NOT NULL);

-- Add keys for table Class

ALTER TABLE Class ADD ( CONSTRAINT Unique_Identifier10 PRIMARY KEY (Class_ID));

-- Table assignation


CREATE TABLE assignation(
Exam_ID Integer NOT NULL,
Group_ID Varchar2(30) NOT NULL,
Examinator_ID Integer NOT NULL,
Invigilator_ID Integer NOT NULL,
Class_ID Varchar2(30 ) NOT NULL);

-- Add keys for table assignation

ALTER TABLE assignation ADD ( CONSTRAINT PK_assignation PRIMARY KEY (Group_ID,Exam_ID));


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Grade ADD ( CONSTRAINT Relationship1 FOREIGN KEY (Exam_ID) REFERENCES Exam (Exam_ID),
                        CONSTRAINT Relationship2 FOREIGN KEY (Student_ID) REFERENCES student (Student_ID));


ALTER TABLE Student ADD ( CONSTRAINT Relationship3 FOREIGN KEY (Group_ID) REFERENCES StudentsGroup (Group_ID));



ALTER TABLE Exam ADD ( CONSTRAINT Relationship4 FOREIGN KEY (Course_ID) REFERENCES Course (Course_ID));



ALTER TABLE assignation ADD ( CONSTRAINT Relationship5 FOREIGN KEY (Exam_ID) REFERENCES Exam (Exam_ID),
                              CONSTRAINT Relationship6 FOREIGN KEY (Group_ID) REFERENCES StudentsGroup (Group_ID),
                              CONSTRAINT Relationship7 FOREIGN KEY (Examinator_ID) REFERENCES Examinator (Prof_ID),
                              CONSTRAINT Relationship8 FOREIGN KEY (Invigilator_ID) REFERENCES Invigilator (Prof_ID),
                              CONSTRAINT Relationship9 FOREIGN KEY (Class_ID) REFERENCES Class (Class_ID));



