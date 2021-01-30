DROP VIEW IF EXISTS first_list, second_list
GO

CREATE VIEW first_list
AS
	SELECT t.teacher_name, t.teacher_surname, d.department_name, s.subject_name
	FROM ((teacher t INNER JOIN department d ON t.teacher_department = d.department_id) 
				INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id)
				INNER JOIN subjects s ON st.subject_id = s.subject_id;
GO

CREATE VIEW second_list
AS
	SELECT t.teacher_name, t.teacher_surname, p.position_name, d.degree_name
	FROM(teacher t INNER JOIN position p ON t.teacher_position = p.position_id)
				INNER JOIN degree d ON t.teacher_degree = d.degree_id
	WHERE (p.position_name = 'Assistant' and (d.degree_name = 'D.Sc.' or d.degree_name = 'PhD')) OR
		(p.position_name = 'Docent' and (d.degree_name = 'PhD' or d.degree_name = 'PhD student')) OR
		(p.position_name = 'Professor' and (d.degree_name = 'D.Sc.' or d.degree_name = 'PhD student'))
GO

--SELECT *
--FROM first_list

--SELECT * 
--FROM second_list
