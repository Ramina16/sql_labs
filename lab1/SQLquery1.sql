CREATE TABLE Subjects
(
  subject_id INT IDENTITY PRIMARY KEY,
  subject_name VARCHAR(40) NOT NULL,
);

CREATE TABLE Department_type
(
  department_type_id INT IDENTITY PRIMARY KEY,
  department_type_name VARCHAR(40) NOT NULL
);

CREATE TABLE Department
(
  department_id INT IDENTITY PRIMARY KEY,
  department_type INT NOT NULL,
  department_name VARCHAR(40) NOT NULL,
  CONSTRAINT dep_type FOREIGN KEY(department_type) REFERENCES Department_type(department_type_id)
);

CREATE TABLE Position
(
  position_id INT IDENTITY PRIMARY KEY,
  position_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE Teacher
(
  teacher_id INT IDENTITY PRIMARY KEY,
  teacher_name VARCHAR(40) NOT NULL,
  teacher_surname VARCHAR(20) NOT NULL,
  teacher_gender VARCHAR(1) NOT NULL,
  CONSTRAINT emp_gender CHECK(teacher_gender LIKE 'M' or teacher_gender LIKE 'F'),
  teacher_birthday DATE NOT NULL,
  teacher_address VARCHAR(80) NOT NULL,
  teacher_position INT NOT NULL,
  teacher_department INT NOT NULL,
  teacher_date_hired DATE NOT NULL,
  teacher_day_fired DATE NULL,
  CONSTRAINT t_position FOREIGN KEY(teacher_position) REFERENCES Position(position_id),
  CONSTRAINT t_department FOREIGN KEY(teacher_department) REFERENCES Department(department_id)
);

CREATE TABLE Teacher_subject
(
  teacher_id INT FOREIGN KEY REFERENCES Teacher(teacher_id),
  subject_id INT FOREIGN KEY REFERENCES Subjects(subject_id)
);
