drop procedure if exists correction
go

create procedure correction
(
	@teacher_id int,
	@subject_id int,
	@day_id int,
	@room int,
	@lesson_time TIME,
	@group_name varchar(20)
)
as 
	begin
	update schedule
	set room = @room, day_id = @day_id, lesson_time = @lesson_time
	where teacher_id = @teacher_id and subject_id = @subject_id and group_name = @group_name
	end
go

--exec correction 10, 3, 2, 315, '8:30', 'FF-02'

--select * from schedule
