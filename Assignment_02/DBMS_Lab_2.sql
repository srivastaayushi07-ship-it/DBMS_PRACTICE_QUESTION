SQL> CREATE TABLE Department(
  2  Dept_ID INT PRIMARY KEY,
  3  Dept_Name VARCHAR(50) ,
  4  Office_Location VARCHAR(100)
  5  );

Table created.

SQL> DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL NUMBER(38)
 DEPT_NAME                                          VARCHAR2(50)
 OFFICE_LOCATION                                    VARCHAR2(100)

SQL> CREATE TABLE Student(
  2  Student_ID INT PRIMARY KEY,
  3  Name VARCHAR(50),
  4  Date_of_Birth DATE,
  5  Gender CHAR(1),
  6  Contact_No VARCHAR(13),
  7  Dept_ID INT,
  8  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  9  );

Table created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             CHAR(1)
 CONTACT_NO                                         VARCHAR2(13)
 DEPT_ID                                            NUMBER(38)

SQL> CREATE TABLE Faculty(
  2  Faculty_ID INT PRIMARY KEY,
  3  Name VARCHAR(50) ,
  4  Designation VARCHAR(20),
  5  Email VARCHAR(50),
  6  Dept_ID INT,
  7  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  8  );

Table created.

SQL> DESC Faculty;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DESIGNATION                                        VARCHAR2(20)
 EMAIL                                              VARCHAR2(50)
 DEPT_ID                                            NUMBER(38)

SQL> CREATE TABLE Course(
  2  Course_ID INT PRIMARY KEY,
  3  Course_Name VARCHAR(30) ,
  4  Credits INT,
  5  Dept_ID INT,
  6  Faculty_ID INT,
  7  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
  8  FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
  9  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER(38)
 COURSE_NAME                                        VARCHAR2(30)
 CREDITS                                            NUMBER(38)
 DEPT_ID                                            NUMBER(38)
 FACULTY_ID                                         NUMBER(38)

SQL> CREATE TABLE Enrollment2(
  2  Enrollment_ID INT PRIMARY KEY,
  3  Semester VARCHAR(10),
  4  Grade CHAR(2),
  5  Student_ID INT,
  6  Course_ID INT,
  7  FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
  8  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
  9  );

Table created.

SQL> DESC Enrollment2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENT_ID                             NOT NULL NUMBER(38)
 SEMESTER                                           VARCHAR2(10)
 GRADE                                              CHAR(2)
 STUDENT_ID                                         NUMBER(38)
 COURSE_ID                                          NUMBER(38)