INSERT INTO Position(position_name) VALUES('Assistant');
INSERT INTO Position(position_name) VALUES('Docent');
INSERT INTO Position(position_name) VALUES('Professor');

INSERT INTO Subjects(subject_name) VALUES('Discrete math');
INSERT INTO Subjects(subject_name) VALUES('Machine learning');
INSERT INTO Subjects(subject_name) VALUES('Math analysis');
INSERT INTO Subjects(subject_name) VALUES('System analysis');
INSERT INTO Subjects(subject_name) VALUES('Computer vision and pattern recognition');
INSERT INTO Subjects(subject_name) VALUES('Economics');
INSERT INTO Subjects(subject_name) VALUES('English');

INSERT INTO Department_type(department_type_name) VALUES('Humanitarian sciences');
INSERT INTO Department_type(department_type_name) VALUES('Programming');
INSERT INTO Department_type(department_type_name) VALUES('Math');

INSERT INTO Department(department_type, department_name) VALUES(1, 'FL');
INSERT INTO Department(department_type, department_name) VALUES(2, 'IASA');
INSERT INTO Department(department_type, department_name) VALUES(1, 'FMM');
INSERT INTO Department(department_type, department_name) VALUES(3, 'IPT'); 

INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Helen', 'Kim', 'F', '16-01-1980', 'Wall str', '31-08-2010', 1, 2);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Julia', 'Kolodiazhna', 'F', '29-07-1977', 'Panama str', '31-08-2003', 2, 3);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Kateryna', 'Havrylenko', 'F', '15-01-1970', 'Royal str', '31-08-2005', 2, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Serge', 'Yakovlev', 'M', '15-01-1982', 'Royal str', '27-06-2010', 2, 4);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Valerii', 'Krygin', 'M', '15-01-1992', 'Family str', '20-07-2017', 1, 4);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Anna', 'Klymenko', 'F', '16-12-1972', 'Pen str', '27-06-2000', 3, 4);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Alex', 'Taranov', 'M', '01-02-1965', 'Cambridge str', '29-08-2001', 3, 4);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Stanislav', 'Beh', 'M', '15-01-1980', 'Dnipro str', '30-08-2015', 2, 2);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Mariia', 'Romanova', 'F', '20-01-1985', 'Teatralnaya str', '14-05-2015', 2, 3);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Viktoriia', 'Prylepa', 'F', '01-04-1994', 'Kreshchatyk str', '27-08-2020', 1, 4);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Mariia', 'Ivanova', 'F', '01-10-1990', 'Mykytenka str', '27-08-2018', 2, 1);
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Ivan', 'Ivanov', 'M', '01-04-1958', 'Drayzera str', '30-08-1098', 3, 4);

INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (1, 2);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (2, 6);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (3, 7);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (4, 1);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (4, 3);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (5, 5);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (6, 3);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (6, 4);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (7, 4);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (8, 2);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (9, 6);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (10, 5);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (11, 7);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (12, 1);
INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (12, 4);
