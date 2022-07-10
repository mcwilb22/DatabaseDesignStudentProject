-- Brandi Mcwilliams
-- Phase 3 populate.sql file
-- Database Design

-- I used comments to separate each of the 20 different tables.  I ordered the tables based on the foreign keys needed to populate them.
-- When I try to run this entire script at once, I receive a few error messages.  However if I add these individually (similar to what we did in labs) I was able to 
-- add all of these without any error messages.  

-- 1.  Campus
INSERT INTO campus
VALUES ('1922', 'IUSB', '1700 E Mishawaka Ave', 'South Bend', 'IN', 'USA', 'www.iusb.edu')


-- 2.  Unit_Cllge
INSERT INTO unit_cllge
VALUES (13);

INSERT INTO unit_cllge
VALUES (17);

-- 3.  Unit
INSERT INTO unit
VALUES ('1922', '47', 'Computer Science', '574-520-4335', 'S', 13);

-- 4.  College
INSERT INTO college
VALUES ('48', 'CLAS', '574-520-4460', 'wkeeler@iusb.edu', 'clas.iusb.edu', '1922', 17);

-- 5.  Non_Academic_Unit
INSERT INTO non_academic_unit
VALUES ('1922', '47', 'This is a non academic unit description.')

-- 6.  Academic_Unit
INSERT INTO academic_unit
VALUES ('1922', '47', '48');


-- 7.  User  (3 users, 2 students one acting as student, 1 acting as a student and also tutor, and lastly 1 faculty who is also supervisor)
--Student
INSERT INTO "User"
VALUES (12345, 'Ann', 'Student', 'annstudent@iusb.edu');

--Tutor/Student
INSERT INTO "User"
VALUES (67890, 'Tom', 'Tutor', 'tomtutor@iusb.edu');

--Faculty/Supervisor
INSERT INTO "User"
VALUES (13579, 'Liguo', 'Yu', 'liguoyu@iusb.edu');



-- 8.  User_Phone
INSERT INTO user_phone
VALUES (13579, '574-555-1357');


-- 9.  Student     
INSERT INTO student
VALUES (12345, 'A');


-- 10.  Faculty
INSERT INTO faculty
VALUES (13579, 'Professor');


-- 11.  Supervisor
INSERT INTO supervisor
VALUES (13579, '8:00-4:30');


-- 12.  Tutor
INSERT INTO tutor
VALUES (67890, 17, 15, 13579);


-- 13.  Appt
INSERT INTO appt
VALUES (11212021, 'Northside Hall', '21-NOV-2021', '21-NOV-2021 04:30:00', '21-NOV-2021 05:30:00', '3', 67890, 17, 12345);


-- 14.  TutSession
INSERT INTO tutsession
VALUES (17, 21112021, 'Northside Hall', '19-NOV-2021', '19-NOV-2021 11:30:00', '19-NOV-2021 12:30:00');


-- 15.  Course
INSERT INTO course
VALUES ('314', 314159, 'Database Design', 17);


-- 16.  Course_Included_TutSession
INSERT INTO course_included_tutsession
VALUES (17, 21112021, '314', 314159);


-- 17.  Appt_For_Course
INSERT INTO appt_for_course
VALUES (11212021, '314', 314159);


-- 18.  Tutor_Responsible_Courses
INSERT INTO tutor_responsible_courses
VALUES (67890, 17, '314', 314159);


-- 19.  Tutor_Assigned_TutSession
INSERT INTO tutor_assigned_tutsession
VALUES (17, 21112021, 17, 67890, '3');


-- 20.  OnCall
INSERT INTO oncall
VALUES (99999, 67890, 17, 13579, 'Northside Hall', '19-NOV-2021', '19-NOV-2021 08:30:00', '19-NOV-2021 09:30:00', 'G', '3', '314', 314159);






