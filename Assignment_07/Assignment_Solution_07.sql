--Display names of students who belong to the same department as student ‘S401’.
SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = 23105128002
);


--Display students who have the same gender as student ‘S402’.
SELECT NAME
FROM STUDENT
WHERE GENDER = (SELECT GENDER 
                 FROM STUDENT 
                 WHERE STUDENT_ID=23105128010);

--Display students belonging to the same department as ‘S403’.
SELECT NAME
FROM STUDENT
WHERE DEPT_ID = (SELECT DEPT_ID 
                       FROM STUDENT
                       WHERE STUDENT_ID=23105128005);

--Display students whose DepartmentID exists where Gender is ‘Female’.
SELECT NAME
FROM STUDENT
WHERE DEPT_ID IN (SELECT DEPT_ID 
                        FROM STUDENT
                        WHERE GENDER='F');

--Display students whose StudentID appears in the Enrollment table.
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID IN (SELECT STUDENT_ID 
                     FROM ENROLLMENT);

--Display students who are enrolled in any course.
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID IN (SELECT STUDENT_ID 
                     FROM ENROLLMENT);

--Display courses having credits greater than average credits.
SELECT COURSE_NAME
FROM COURSE
WHERE CREDITS > (SELECT AVG(CREDITS) 
                   FROM COURSE);

--Display students whose StudentID is greater than the average StudentID (assume numeric comparison).
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID > (SELECT AVG(STUDENT_ID) 
                    FROM STUDENT);

--Display departments having more students than the average number of students per department.
SELECT DEPT_NAME
FROM DEPARTMENT
WHERE DEPT_ID IN (SELECT DEPT_ID
                         FROM STUDENT
                         GROUP BY DEPT_ID
                         HAVING COUNT(*) > (SELECT AVG(student_count)
                                             FROM (SELECT DEPT_ID, COUNT(*) as student_count
                                                   FROM STUDENT
                                                   GROUP BY DEPT_ID)));

--Display names of students who are enrolled in courses (without using JOIN).
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID IN (SELECT STUDENT_ID 
                     FROM ENROLLMENT);

--Display students who are allocated to any department (using subquery logic).
SELECT NAME
FROM STUDENT
WHERE DEPT_ID IN (SELECT DEPT_ID 
                        FROM DEPARTMENT);

--Display courses that have at least one student enrolled.
SELECT COURSE_NAME
FROM COURSE
WHERE COURSE_ID IN (SELECT COURSE_ID 
                     FROM ENROLLMENT);

--Display the course with maximum credits.
SELECT COURSE_NAME
FROM COURSE
WHERE CREDITS = (SELECT MAX(CREDITS) 
                  FROM COURSE);

--Display students who are enrolled in more than one course.
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID IN (SELECT STUDENT_ID
                     FROM ENROLLMENT
                     GROUP BY STUDENT_ID
                     HAVING COUNT(*) > 1);

--Display departments having the maximum number of students.
SELECT DEPT_NAME
FROM DEPARTMENT
WHERE DEPT_ID IN (SELECT DEPT_ID
                         FROM STUDENT
                         GROUP BY DEPT_ID
                         HAVING COUNT(*) = (SELECT MAX(student_count)
                                             FROM (SELECT DEPT_ID, COUNT(*) as student_count
                                                   FROM STUDENT
                                                   GROUP BY DEPT_ID)));

--Display students who are enrolled in the same course as student ‘S401’.
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID IN (SELECT STUDENT_ID 
                     FROM ENROLLMENT
                     WHERE COURSE_ID IN (SELECT COURSE_ID 
                                         FROM ENROLLMENT
                                         WHERE STUDENT_ID=23105128005));

--Display students who are not enrolled in any course.
SELECT NAME
FROM STUDENT
WHERE STUDENT_ID NOT IN (SELECT STUDENT_ID 
                         FROM ENROLLMENT);

--Display courses that have no students enrolled.
SELECT COURSE_NAME
FROM COURSE
WHERE COURSE_ID NOT IN (SELECT COURSE_ID 
                         FROM ENROLLMENT);