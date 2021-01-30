INSERT INTO Week_day(day_name) VALUES ('Monday')
INSERT INTO Week_day(day_name) VALUES ('Tuesday')
INSERT INTO Week_day(day_name) VALUES ('Wednesday')
INSERT INTO Week_day(day_name) VALUES ('Thursday')
INSERT INTO Week_day(day_name) VALUES ('Friday')
INSERT INTO Week_day(day_name) VALUES ('Saturday')

INSERT INTO Subjects(subject_name) VALUES ('Discrete mathematics')
INSERT INTO Subjects(subject_name) VALUES ('Math analysis')
INSERT INTO Subjects(subject_name) VALUES ('Physics')
INSERT INTO Subjects(subject_name) VALUES ('Theory of probability')
INSERT INTO Subjects(subject_name) VALUES ('Algorithms and structures')
INSERT INTO Subjects(subject_name) VALUES ('Symmetric cryptography')
INSERT INTO Subjects(subject_name) VALUES ('Mathematical physics')
INSERT INTO Subjects(subject_name) VALUES ('Differential equations')

INSERT INTO Department(department_name) VALUES('IS');
INSERT INTO Department(department_name) VALUES('MMIS');
INSERT INTO Department(department_name) VALUES('Physics');

INSERT INTO Position(position_name) VALUES('Assistant');
INSERT INTO Position(position_name) VALUES('Docent');
INSERT INTO Position(position_name) VALUES('Professor');

INSERT INTO Degree(degree_name) VALUES('PhD student');
INSERT INTO Degree(degree_name) VALUES('D.Sc.');
INSERT INTO Degree(degree_name) VALUES('PhD');

INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Sergey', 'Yakovlev', 'M', 2, 2, 2);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Anna', 'Potapova', 'F', 2, 2, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Stanislav', 'Beh', 'M', 1, 2, 3);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Andrey', 'Dorogovtsev', 'M', 3, 3, 2);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Alla', 'Klymenko', 'F', 1, 1, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Andrey', 'Melnichenko', 'M', 3, 3, 2);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Maxym', 'Stepanov', 'M', 1, 1, 3);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('George', 'Ryabov', 'M', 2, 2, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Nadiya', 'Pavlova', 'F', 1, 1, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_position, teacher_degree, teacher_department) VALUES 
('Alex', 'Motor', 'M', 2, 2, 3);

INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (1, 1);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (1, 6);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (2, 2);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (3, 3);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (4, 4);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (5, 5);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (6, 6);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (7, 7);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (8, 8);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (8, 4);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (9, 2);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (10, 7);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (10, 3);

INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (1, 1, 1, 211, '14:15:00', 'FI-01');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (1, 1, 1, 211, '08:30', 'FI-02');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (1, 6, 1, 203, '10:25', 'FI-73');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (1, 6, 3, 203, '10:25', 'FI-73');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (1, 6, 3, 211, '14:15', 'FI-74');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 1, 203, '8:30', 'FI-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 1, 211, '10:25', 'FI-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 4, 211, '8:30', 'FI-93');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 4, 211, '10:25', 'FI-94');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 5, 215, '10:25', 'FI-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 5, 215, '10:25', 'FI-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 5, 215, '10:25', 'FI-93');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (2, 2, 5, 215, '10:25', 'FI-94');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (3, 3, 2, 201, '8:30', 'FF-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (3, 3, 2, 201, '10:25', 'FF-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (4, 4, 3, 215, '14:15', 'FI-81');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (4, 4, 3, 215, '14:15', 'FI-82');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (4, 4, 3, 215, '14:15', 'FI-83');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (4, 4, 3, 215, '14:15', 'FI-84');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (5, 5, 2, 303, '14:15', 'FF-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (5, 5, 2, 303, '10:25', 'FE-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (5, 5, 5, 303, '8:30', 'FF-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (5, 5, 5, 303, '10:25', 'FE-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (6, 6, 2, 211, '12:00', 'FI-73');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (6, 6, 2, 211, '12:00', 'FI-74');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (7, 7, 1, 204, '12:00', 'FF-91');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (7, 7, 6, 204, '12:00', 'FF-92');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (8, 8, 5, 201, '8:30', 'FF-83');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (8, 4, 4, 201, '8:30', 'FI-81');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (9, 2, 6, 305, '14:15', 'FI-01');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (10, 3, 2, 204, '8:30', 'FF-02');
INSERT INTO Schedule(teacher_id, subject_id, day_id, room, lesson_time, group_name) VALUES (10, 7, 2, 204, '12:00', 'FF-92');
