CREATE TABLE universities (
         university_id INT, 
         university_name VARCHAR(100)
     );
     CREATE TABLE courses (
         course_id INT, 
         course_name VARCHAR(100), 
         university_id INT
     );
     INSERT INTO universities VALUES 
         (1, 'IIT Bombay'), 
         (2, 'IIM Ahmedabad'), 
         (3, 'BHU'), 
         (4, 'Delhi University'), 
         (5, 'Anna University');
     INSERT INTO courses VALUES 
         (1, 'B.Tech', 1), 
         (2, 'MBA', 2), 
         (3, 'BA in Arts', 4), 
         (4, 'M.Sc. in Physics', 3), 
         (5, 'B.Com', 4);


SELECT * FROM UNIVERSITIES
SELECT * FROM COURSES

/*
Retrieve all the universities and their courses offered.
*/

SELECT U.UNIVERSITY_NAME,
	   C.COURSE_NAME
FROM UNIVERSITIES U
JOIN COURSES C
ON U.UNIVERSITY_ID = C.UNIVERSITY_ID



