DROP VIEW second_task, first_task, third_task
GO

CREATE VIEW first_task
AS
SELECT t.teacher_name, t.teacher_surname, s.subject_name
FROM (teacher t INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id) 
        INNER JOIN subjects s ON st.subject_id = s.subject_id;
GO

CREATE VIEW second_task
AS
SELECT t.teacher_name, t.teacher_surname, d.department_name
FROM teacher t INNER JOIN department d ON t.teacher_department = d.department_id
GO

CREATE VIEW third_task
AS 
SELECT s.subject_name, d.department_name, dt.department_type_name
FROM (((subjects s INNER JOIN teacher_subject st ON s.subject_id = st.subject_id) 
				INNER JOIN teacher t ON st.teacher_id = t.teacher_id) 
				INNER JOIN department d ON t.teacher_department = d.department_id)
				INNER JOIN department_type dt ON d.department_type = dt.department_type_id
GO

SELECT teacher_name, teacher_surname, subject_name 
FROM first_task

SELECT teacher_name, teacher_surname, department_name 
FROM second_task
ORDER BY department_name

SELECT count(teacher_name) as number_of_teachers, department_name
FROM second_task
GROUP BY department_name

SELECT subject_name, department_name, department_type_name
FROM third_task
GROUP BY subject_name, department_name, department_type_name
ORDER BY department_name
