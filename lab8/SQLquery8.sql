DROP TRIGGER if exists new_teacher 
GO
CREATE TRIGGER new_teacher
	ON teacher FOR INSERT
	AS
	IF EXISTS
		(SELECT *
			FROM teacher t
			WHERE t.teacher_name in (select t.teacher_name from teacher t group by t.teacher_name having (count(t.teacher_name) > 1))
				and t.teacher_surname in (select t.teacher_surname from teacher t group by t.teacher_surname having (count(t.teacher_surname) > 1))
				and t.teacher_address in (select t.teacher_address from teacher t group by t.teacher_address having (count(t.teacher_address) > 1))
				and t.teacher_date_hired in (select t.teacher_date_hired from teacher t group by t.teacher_date_hired having (count(t.teacher_date_hired) > 1))
				and t.teacher_position in (select t.teacher_position from teacher t group by t.teacher_position having (count(t.teacher_position) > 1))
				and t.teacher_birthday in (select t.teacher_birthday from teacher t group by t.teacher_birthday having (count(t.teacher_birthday) > 1))
				)
	BEGIN
	RAISERROR ('Error! This teacher is already exists.', 16, 1);  
	ROLLBACK TRANSACTION;  
	RETURN   
	END;  
GO 

DROP TRIGGER IF EXISTS teacher_update
GO

DROP VIEW IF EXISTS teacher_name_lesson
GO

CREATE VIEW teacher_name_lesson
AS 
SELECT t.teacher_id, t.teacher_name, t.teacher_surname, s.subject_name
FROM (teacher t INNER JOIN teacher_subject st ON t.teacher_id = st.teacher_id) 
				INNER JOIN subjects s ON st.subject_id = s.subject_id;

GO

CREATE TRIGGER teacher_update
	ON teacher_subject
	FOR INSERT, UPDATE	
	AS
		SELECT * 
		FROM teacher_name_lesson

GO
-- let’s check triggers:
-- insert new teacher and check if we see updates
set identity_insert teacher on;

INSERT INTO Teacher(teacher_id, teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
(16, 'lena1', 'tedede11', 'M', '16-01-1980', 'test1', '1-08-2010', 2, 2);

INSERT INTO Teacher_subject(teacher_id, subject_id) VALUES (16, 4);
-- Try to insert teacher that we already hsve in the table
/*set identity_insert teacher off;
INSERT INTO Teacher(teacher_name, teacher_surname, teacher_gender, teacher_birthday, teacher_address, teacher_date_hired,
teacher_position, teacher_department) VALUES 
('Helen', 'Kim', 'F', '16-01-1980', 'Wall str', '31-08-2010', 1, 2);
*/
