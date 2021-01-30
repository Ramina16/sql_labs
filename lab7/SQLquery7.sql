DROP PROCEDURE IF EXISTS num_lessons
USE teacher_subject
GO
CREATE PROCEDURE num_lessons
	@department_name VARCHAR(40) OUTPUT
AS
SELECT t.teacher_name, t.teacher_surname, d.department_name,
	(SELECT COUNT(st.subject_id)
	FROM teacher_subject st 
	WHERE st.teacher_id = t.teacher_id) as num_less
FROM teacher t INNER JOIN department d ON t.teacher_department = d.department_id
WHERE d.department_name = @department_name
ORDER BY num_less
RETURN
GO
--EXEC num_lessons IPT
GO

DROP PROCEDURE IF EXISTS add_teacher

GO
/*CREATE PROCEDURE add_teacher
(
	@teacher_name VARCHAR(40) OUTPUT,
	@teacher_surname VARCHAR(20) OUTPUT,
	@teacher_gender VARCHAR(1) OUTPUT, 
	@teacher_birthday DATE OUTPUT, 
	@teacher_address VARCHAR(80) OUTPUT, 
	@teacher_date_hired DATE OUTPUT,
	@teacher_position INT OUTPUT, 
	@teacher_department INT OUTPUT)
AS
	IF EXISTS(
		SELECT 
			t.teacher_id
		FROM
			teacher t
		WHERE
			t.teacher_name = @teacher_name 
			and t.teacher_surname = @teacher_surname
			and t.teacher_gender = @teacher_gender
			and t.teacher_address = @teacher_address
			and t.teacher_birthday = @teacher_birthday
			and t.teacher_date_hired = @teacher_date_hired
			and t.teacher_position = @teacher_position)
			BEGIN
				RAISERROR ('Error! This teacher is already exists.', 15, 1);  
			END
		ELSE
			BEGIN
		INSERT INTO
			teacher
			(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) 
	VALUES 
		(	@teacher_name,
			@teacher_surname,
			@teacher_gender, 
			@teacher_birthday, 
			@teacher_address, 
			@teacher_date_hired,
			@teacher_position, 
			@teacher_department );
			END
GO

--EXEC add_teacher 'Helen', 'Kim', 'F', '16-01-1980', 'Wall str', '31-08-2010', 1, 2
GO
delete from teacher_subject
where teacher_id >= 13

delete from teacher
where teacher_id >= 13

select *
from teacher

select * 
from teacher_subject*/

DROP PROCEDURE IF EXISTS add_department
GO

CREATE PROCEDURE add_department
	@department_type INT OUTPUT,
	@department_name VARCHAR(40) OUTPUT
AS
	IF EXISTS(
		SELECT department_id
		FROM department
		WHERE department_name = @department_name)
		BEGIN
			RAISERROR ('Error! This department is already exists.', 16, 1);  
		END
	ELSE
		BEGIN
	INSERT INTO department(department_type, department_name) VALUES (@department_type, @department_name);
		END
GO
-- try to insert the department that we already have
--EXEC add_department 2, 'IPT'

-- add new department
EXEC add_department 2, 'FPM'

select *
from department
