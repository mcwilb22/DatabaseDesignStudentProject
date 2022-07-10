
--- Table 1
INSERT INTO campus (id, name) VALUES ('iusb', 'IU South Bend');
INSERT INTO campus (id, name) VALUES ('iub', 'IU Bloomington');
INSERT INTO campus (id, name) VALUES ('iuk', 'IU Kokomo');


--- Table 2
--101: iusb CLAS College
--102: iusb Business School
--103: iusb Financial Aid
--201: iub School of Informatics
--104: iusb Computer Science
--105: iusb Mathematics


INSERT INTO unit_cllge VALUES (101); 
INSERT INTO unit_cllge VALUES (102); 
INSERT INTO unit_cllge VALUES (103); 
INSERT INTO unit_cllge VALUES (201); 
INSERT INTO unit_cllge VALUES (104); 
INSERT INTO unit_cllge VALUES (105); 



--- Table 3
INSERT INTO college (id, name, campus_id, unit_cllge_id) VALUES ('CLAS', 'College of LAS', 'iusb', 101);
INSERT INTO college (id, name, campus_id, unit_cllge_id) VALUES ('Business', 'School of Business', 'iusb', 102);
INSERT INTO college (id, name, campus_id, unit_cllge_id) VALUES ('Informatics', 'School of Informatics', 'iub', 201);


--- Table 4
INSERT INTO unit VALUES ('iusb', 'CS', 'Computer Science Department', '574-520-5555', 'A', 104);
INSERT INTO unit VALUES ('iusb', 'MATH', 'Mathematics Department', '574-520-5545', 'A', 105);
INSERT INTO unit VALUES ('iusb', 'FA', 'Financial Aid Department', '999-520-5545', 'N', 103);


--- Table 5
INSERT INTO academic_unit VALUES ('iusb', 'CS', 'CLAS');
INSERT INTO academic_unit VALUES ('iusb', 'MATH', 'CLAS');


--- Table 6
INSERT INTO non_academic_unit VALUES ('iusb', 'FA', 'Financial Aid Service');


--- Table 7
INSERT INTO "User" VALUES (9001, 'Janet', 'Omi', 'jim@iu.edu');
INSERT INTO "User" VALUES (9002, 'Jane', 'Tim', 'jom@iu.edu');
INSERT INTO "User" VALUES (9003, 'Janet', 'Lew', 'jum@iu.edu');
INSERT INTO "User" VALUES (9004, 'Jant', 'Goth', 'jkm@iu.edu');
INSERT INTO "User" VALUES (9005, 'Bnnet', 'Maha', 'jdm@iu.edu');
INSERT INTO "User" VALUES (9006, 'Net', 'Maeh', 'jcm@iu.edu');
INSERT INTO "User" VALUES (9007, 'Jet', 'Hith', 'jbm@iu.edu');
INSERT INTO "User" VALUES (9008, 'Jt', 'Doug', 'jnm@iu.edu');
INSERT INTO "User" VALUES (9009, 'Jet', 'Dith', 'jsm@iu.edu');
INSERT INTO "User" VALUES (9010, 'Jim', 'Champ', 'jam@iu.edu');
INSERT INTO "User" VALUES (9011, 'Tim', 'Power', 'jqm@iu.edu');


--- Table 8
INSERT INTO user_phone VALUES (9001, '574-909-9876');


--- Table 9
INSERT INTO faculty VALUES (9001, 'FP');
INSERT INTO faculty VALUES (9002, 'AP');
INSERT INTO faculty VALUES (9004, 'AP');
INSERT INTO faculty VALUES (9006, 'AP');
INSERT INTO faculty VALUES (9011, 'FP');


--- Table 10
INSERT INTO student VALUES (9003, 'u');
INSERT INTO student VALUES (9005, 'u');
INSERT INTO student VALUES (9004, 'g');
INSERT INTO student VALUES (9006, 'g');
INSERT INTO student VALUES (9007, 'g');
INSERT INTO student VALUES (9008, 'u');
INSERT INTO student VALUES (9009, 'u');
INSERT INTO student VALUES (9010, 'u');


--- Table 11
INSERT INTO supervisor VALUES (9001, 'MW: 1-2Pm');


--- Table 12
INSERT INTO tutor VALUES (9002, 101, 20.5, 9001);
INSERT INTO tutor VALUES (9003, 101, 10.5, 9001);
INSERT INTO tutor VALUES (9003, 104, 15.5, 9001);
INSERT INTO tutor VALUES (9004, 104, 16.5, 9001);
INSERT INTO tutor VALUES (9010, 101, 11.5, 9001);
INSERT INTO tutor VALUES (9010, 104, 17.5, 9001);



--- Table 13
INSERT INTO course VALUES ('IUSBCSCI', 101, 'Programming 1', 104);
INSERT INTO course VALUES ('IUSBCSCI', 201, 'Programming 2', 104);


--- Table 14
INSERT INTO tutor_responsible_courses VALUES (9002, 101, 'IUSBCSCI', 101);
INSERT INTO tutor_responsible_courses VALUES (9003, 101, 'IUSBCSCI', 101);
INSERT INTO tutor_responsible_courses VALUES (9003, 104, 'IUSBCSCI', 201);
INSERT INTO tutor_responsible_courses VALUES (9003, 104, 'IUSBCSCI', 101);
INSERT INTO tutor_responsible_courses VALUES (9004, 104, 'IUSBCSCI', 101);
INSERT INTO tutor_responsible_courses VALUES (9004, 104, 'IUSBCSCI', 201);
INSERT INTO tutor_responsible_courses VALUES (9010, 104, 'IUSBCSCI', 101);
INSERT INTO tutor_responsible_courses VALUES (9010, 101, 'IUSBCSCI', 201);



--- Table 15
--C: class; L: lab; E: exam

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (801, 9003, 104, 9011, '19-MAY-2021', 'E', '3', 'IUSBCSCI', 101);

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (802, 9003, 104, 9011, '19-JUN-2021', 'C', '3', 'IUSBCSCI', 101);

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (803, 9003, 104, 9011, '19-APR-2021', 'L', '3', 'IUSBCSCI', 101);

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (804, 9003, 104, 9011, '29-MAY-2021', 'E', '2', 'IUSBCSCI', 101);

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (805, 9003, 101, 9011, '09-MAY-2021', 'C', '3', 'IUSBCSCI', 101);

INSERT INTO oncall (id, tutor_user_id, tutor_unit_college_id, faculty_user_id, oncalldate, task_type, status, course_code, course_number) VALUES (806, 9004, 104, 9011, '27-MAY-2021', 'L', '3', 'IUSBCSCI', 201);



--- Table 16
INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (701, '15-MAY-2021', '3', 9003, 104, 9010);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (702, '05-MAY-2021', '2', 9003, 104, 9010);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (703, '15-JUN-2021', '3', 9003, 104, 9010);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (704, '15-APR-2021', '3', 9003, 104, 9010);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (705, '10-MAY-2021', '3', 9003, 104, 9008);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (706, '18-MAY-2021', '3', 9003, 101, 9009);

INSERT INTO appt (id, apptdate, status, tutor_user_id, tutor_unit_college_id, student_user_id) VALUES (707, '13-MAY-2021', '3', 9004, 104, 9010);


--- Table 17
INSERT INTO appt_for_course VALUES (701, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (702, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (703, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (704, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (705, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (706, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (707, 'IUSBCSCI', 101);
INSERT INTO appt_for_course VALUES (707, 'IUSBCSCI', 201);


--- Table 18
INSERT INTO tutsession (unit_cllge_id, id, tutsessiondate) VALUES (104, 601, '01-MAY-2021');
INSERT INTO tutsession (unit_cllge_id, id, tutsessiondate) VALUES (101, 602, '29-MAY-2021');
INSERT INTO tutsession (unit_cllge_id, id, tutsessiondate) VALUES (104, 603, '01-APR-2021');
INSERT INTO tutsession (unit_cllge_id, id, tutsessiondate) VALUES (104, 604, '21-MAY-2021');


--- Table 19
INSERT INTO course_included_tutsession VALUES (104, 601, 'IUSBCSCI', 101);
INSERT INTO course_included_tutsession VALUES (104, 601, 'IUSBCSCI', 201);
INSERT INTO course_included_tutsession VALUES (101, 602, 'IUSBCSCI', 101);
INSERT INTO course_included_tutsession VALUES (104, 603, 'IUSBCSCI', 101);
INSERT INTO course_included_tutsession VALUES (104, 604, 'IUSBCSCI', 101);



--- Table 20
INSERT INTO tutor_assigned_tutsession VALUES (104, 601, 104, 9003, '3');
INSERT INTO tutor_assigned_tutsession VALUES (104, 601, 104, 9004, '3');
INSERT INTO tutor_assigned_tutsession VALUES (101, 602, 101, 9003, '3');
INSERT INTO tutor_assigned_tutsession VALUES (101, 602, 101, 9002, '3');
INSERT INTO tutor_assigned_tutsession VALUES (104, 603, 104, 9003, '3');
INSERT INTO tutor_assigned_tutsession VALUES (104, 604, 104, 9003, '3');
INSERT INTO tutor_assigned_tutsession VALUES (104, 604, 104, 9004, '3');










