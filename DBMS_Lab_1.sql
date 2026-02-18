CREATE TABLE Student1 (
RollNo INT,
Name VARCHAR(50),
Dept VARCHAR(20),
age INT,
Phone VARCHAR(15)
);

CREATE TABLE Course (
CourseID INT,
CourseName VARCHAR(50),
Credits INT
);

ALTER TABLE STUDENT1 ADD city
VARCHAR(50);

ALTER TABLE Student1 ADD semester
VARCHAR(50);
  
ALTER TABLE Student1
RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
VALUES (100,'Aayushi','AI',21,9934793078,'BANGALORE',5);

INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
VALUES (101,'Ravi','AI',20,5994793078,'DELHI',5);

INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
VALUES (102,'Rahul','AI',22,3456781238,'PATNA',5);

INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
VALUES (103,'Adira','AI',19,5678912345,'Chennai',5);

INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
VALUES (105,'Ananya','CSE',24,1234567897,'HYDERABAD',5);

UPDATE Student1
SET Dept = 'ECE'
WHERE RollNo = 101;

UPDATE Student1
SET City=' PATNA'
WHERE Name='RAHUL';

UPDATE Student
SET age = age+1;

DELETE FROM Student1
WHERE RollNo=105;
