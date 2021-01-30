-- Class schedule for one arbitrary group.
drop procedure if exists group_schedule
go

create procedure group_schedule
(
	@group_name varchar(20)
)
	as
	begin 
		select t.teacher_name, t.teacher_surname, w.day_name, sc.room, sc.lesson_time, sc.group_name, s.subject_name
		from (((teacher t inner join teacher_subject st on t.teacher_id = st.teacher_id) 
					inner join subjects s on st.subject_id = s.subject_id) 
					inner join schedule sc on (s.subject_id = sc.subject_id and st.teacher_id = sc.teacher_id))
					inner join week_day w on sc.day_id = w.day_id
		where sc.group_name = @group_name
		order by sc.day_id
	end
go

--exec group_schedule 'FI-81'

--staff of departments: department - number of professors - number of associate professors - number of senior teachers;
DROP VIEW IF EXISTS staff_of_departments
GO

CREATE VIEW staff_of_departments
AS
	SELECT d.department_name, p.position_name, COUNT(p.position_name) AS amount
	FROM (teacher t inner join department d ON t.teacher_department = d.department_id)
				inner join position p ON t.teacher_position = p.position_id
	GROUP BY d.department_name, p.position_name
GO

--SELECT * 
--FROM staff_of_departments
--ORDER BY department_name

-- Schedule for teachers of the department "X".
drop procedure if exists department_schedule
go

create procedure department_schedule
(
	@department_name varchar(20)
)
	as
	begin
		select t.teacher_name, t.teacher_surname, w.day_name, sc.room, sc.lesson_time, sc.group_name, s.subject_name, d.department_name
		from ((((teacher t inner join teacher_subject st on t.teacher_id = st.teacher_id) 
					inner join subjects s on st.subject_id = s.subject_id) 
					inner join schedule sc on (s.subject_id = sc.subject_id and st.teacher_id = sc.teacher_id))
					inner join week_day w on sc.day_id = w.day_id)
					inner join department d on t.teacher_department = d.department_id
		where d.department_name = @department_name
		order by sc.day_id
	end
go

--exec department_schedule 'IS'

-- "Teacher workload": department - teacher - the number of disciplines he teaches and the number of hours in these disciplines
drop view if exists help_view
go

create view help_view
	as
		select t.teacher_name, t.teacher_surname, d.department_name, s.subject_name, sc.day_id--, count(distinct st.subject_id) as test
		from (((teacher t inner join department d on t.teacher_department = d.department_id)
				inner join teacher_subject st on t.teacher_id = st.teacher_id)
				inner join subjects s on st.subject_id = s.subject_id)
				inner join schedule sc on (s.subject_id = sc.subject_id and st.teacher_id = sc.teacher_id)
		group by t.teacher_name, t.teacher_surname, d.department_name, sc.day_id, sc.lesson_time, s.subject_name
go


DROP VIEW IF EXISTS loading_of_teachers
GO

CREATE VIEW loading_of_teachers
AS
	SELECT teacher_name, teacher_surname, department_name, COUNT(teacher_name) as number_of_hours
	FROM help_view
	GROUP BY teacher_name, teacher_surname, department_name
GO

--SELECT * FROM loading_of_teachers
