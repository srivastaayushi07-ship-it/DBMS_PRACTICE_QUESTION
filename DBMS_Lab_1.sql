SQL*Plus: Release 21.0.0.0.0 - Production on Wed Jan 28 05:26:34 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: SYSTEM
Enter password:
Last Successful login time: Wed Jan 28 2026 05:24:30 -08:00

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student1 (
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE STUDENT1 ADD city
  2  VARCHAR(50);

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)

SQL> ALTER TABLE Student1 ADD semester
  2  VARCHAR(50);

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> ALTER TABLE Student1
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> DROP TABLE Course;

Table dropped.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (100,'Aayushi','AI',21,9934793078,'BANGALORE',5);

1 row created.

SQL> INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (101,'Ravi','AI',20,5994793078,'DELHI',5);

1 row created.

SQL> INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (102,'Rahul','AI',22,3456781238,'PATNA',5);

1 row created.

SQL> INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (103,'Adira','AI',19,5678912345,'Chennai',5);

1 row created.

SQL> INSERT INTO Student1(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (105,'Ananya','CSE',24,1234567897,'HYDERABAD',5);

1 row created.

SQL> SELECT * FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Aayushi
AI                           21 9934793078
BANGALORE
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ravi
AI                           20 5994793078
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
AI                           22 3456781238
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Adira
AI                           19 5678912345
Chennai
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Ananya
CSE                          24 1234567897
HYDERABAD
5


SQL> SELECT RollNo,Name FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
       100 Aayushi
       101 Ravi
       102 Rahul
       103 Adira
       105 Ananya

SQL> SELECT * FROM Student1 WHERE AGE > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Aayushi
AI                           21 9934793078
BANGALORE
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
AI                           22 3456781238
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Ananya
CSE                          24 1234567897
HYDERABAD
5


SQL> UPDATE Student1
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> UPDATE Student1
  2  SET City=' PATNA'
  3  WHERE Name='RAHUL';

0 rows updated.

SQL> UPDATE Student
  2  SET age = age+1;

10 rows updated

SQL> DELETE FROM Student1
  2  WHERE RollNo=105;

1 row deleted
