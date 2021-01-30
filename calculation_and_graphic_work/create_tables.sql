DROP TABLE Subjects, Department, Position, Degree, Week_day, Teacher, Teacher_subject,  Schedule 
CREATE TABLE Subjects
(
  subject_id INT IDENTITY PRIMARY KEY,
  subject_name VARCHAR(40) NOT NULL,
);

CREATE TABLE Department
(
  department_id INT IDENTITY PRIMARY KEY,
  department_name VARCHAR(40) NOT NULL,
);

CREATE TABLE Position
(
  position_id INT IDENTITY PRIMARY KEY,
  position_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE Degree
(
  degree_id INT IDENTITY PRIMARY KEY,
  degree_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE Week_day
(
  day_id INT IDENTITY PRIMARY KEY,
  day_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE Teacher
(
  teacher_id INT IDENTITY PRIMARY KEY,
  teacher_name VARCHAR(40) NOT NULL,
  teacher_surname VARCHAR(20) NOT NULL,
  teacher_gender VARCHAR(1) NOT NULL,
  CONSTRAINT emp_gender CHECK(teacher_gender LIKE 'M' or teacher_gender LIKE 'F'),
  teacher_position INT NOT NULL,
  teacher_degree INT NOT NULL,
  teacher_department INT NOT NULL,
  CONSTRAINT t_position FOREIGN KEY(teacher_position) REFERENCES Position(position_id),
  CONSTRAINT t_department FOREIGN KEY(teacher_department) REFERENCES Department(department_id),
  CONSTRAINT t_degree FOREIGN KEY(teacher_degree) REFERENCES Degree(degree_id)
);

CREATE TABLE Teacher_subject
(
  teacher_id INT FOREIGN KEY REFERENCES Teacher(teacher_id),
  subject_id INT FOREIGN KEY REFERENCES Subjects(subject_id)
);

CREATE TABLE Schedule
(
  teacher_id INT FOREIGN KEY REFERENCES Teacher(teacher_id),
  subject_id INT FOREIGN KEY REFERENCES Subjects(subject_id),
  day_id INT FOREIGN KEY REFERENCES Week_day(day_id),
  room INT NOT NULL,
  lesson_time TIME NOT NULL,
  group_name VARCHAR(20) NOT NULL
);
