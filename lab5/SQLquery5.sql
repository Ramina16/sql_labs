--select teachers whose age is bigger than avarage:
SELECT t.teacher_name, t.teacher_surname, DATEDIFF(YEAR, t.teacher_birthday, GETDATE()) as age
FROM teacher t
WHERE DATEDIFF(YEAR, t.teacher_birthday, GETDATE()) >
	(SELECT AVG(DATEDIFF(YEAR, t.teacher_birthday, GETDATE()))
	FROM teacher t)
ORDER BY age

--select the number of lessons each academic teaches
SELECT t.teacher_name, t.teacher_surname,
	(SELECT COUNT(st.subject_id)
	FROM teacher_subject st 
	WHERE st.teacher_id = t.teacher_id) as num_less
FROM teacher t 
ORDER BY num_less

--select a year/s when there the most teachers were hired
SELECT YEAR(teacher_date_hired) as hired_year
FROM teacher
GROUP BY YEAR(teacher_date_hired)
HAVING COUNT(YEAR (teacher_date_hired))=(SELECT MAX(d.aCount)
	FROM (SELECT COUNT(YEAR(teacher_date_hired)) as aCount
		FROM Teacher
		GROUP BY(YEAR(teacher_date_hired))) as d)

--select employees from IPT
SELECT teacher_name, teacher_surname
FROM teacher
WHERE teacher_department IN 
	(SELECT department_id 
	FROM department
	WHERE department_name = 'IPT')
ORDER BY teacher_name
