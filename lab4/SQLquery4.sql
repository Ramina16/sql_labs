SELECT t.teacher_name, t.teacher_surname, s.subject_name
FROM (teacher t INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id) 
		INNER JOIN subjects s ON st.subject_id = s.subject_id
ORDER BY t.teacher_name

SELECT t.teacher_name, t.teacher_surname, d.department_name
FROM (teacher t INNER JOIN department d ON t.teacher_department = d.department_id)
ORDER BY d.department_name

SELECT DISTINCT s.subject_name, d.department_name
FROM ((teacher t INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id) 
		INNER JOIN subjects s ON st.subject_id = s.subject_id)
		INNER JOIN department d ON t.teacher_department = d.department_id
ORDER BY d.department_name

/* or we can rewrite the above SELECT statement like this: 
SELECT s.subject_name, d.department_name
FROM ((teacher t INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id) 
		INNER JOIN subjects s ON st.subject_id = s.subject_id)
		INNER JOIN department d ON t.teacher_department = d.department_id
GROUP BY s.subject_name, d.department_name
ORDER BY d.department_name */

SELECT t.teacher_name, t.teacher_surname, p.position_name, d.department_name
FROM (teacher t INNER JOIN department d ON t.teacher_department = d.department_id)
		INNER JOIN position p ON t.teacher_position = p.position_id
ORDER BY p.position_name

SELECT d.department_name, COUNT(t.teacher_id) as num_teacher_from_dep
FROM teacher t INNER JOIN department d ON t.teacher_department = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name
