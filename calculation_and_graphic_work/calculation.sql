drop procedure if exists check_num_lessons
go

create procedure check_num_lessons
(
	@teacher_name varchar(40),
	@teacher_surname varchar(40)
)
	as
	begin
		if exists
		( 
		select hv.teacher_name, hv.teacher_surname, w.day_name, count(hv.subject_name) as num_lessons
		from help_view hv inner join week_day w on hv.day_id = w.day_id
		where hv.teacher_name = @teacher_name and hv.teacher_surname = @teacher_surname
		group by hv.teacher_name, hv.teacher_surname, w.day_name
		having count(hv.subject_name) > 3
		)
		print ('Teacher ' + @teacher_name + ' ' + @teacher_surname + ' ' + 'has more than 3 lessons per day.')
		else
		print('This teacher has 3 or less lessons per day')
	end
go

--exec check_num_lessons 'Sergey', 'Yakovlev'
