ALTER TABLE Teacher
	ADD CONSTRAINT date_check CHECK(teacher_date_hired < teacher_day_fired);
ALTER TABLE Teacher
	ADD CONSTRAINT age_check CHECK((DATEDIFF(YEAR, teacher_birthday, GETDATE())) >= 18);
ALTER TABLE Department
	DROP CONSTRAINT dep_type
ALTER TABLE Department
	ADD CONSTRAINT drop_type FOREIGN KEY(department_type) REFERENCES Department_type(department_type_id) ON DELETE CASCADE;
EXEC SP_RENAME 'Position', 'Position_new'
EXEC SP_RENAME 'Position_new', 'Position'
ALTER TABLE Teacher
	ADD Single VARCHAR(3) DEFAULT 'Yes';
ALTER TABLE Teacher
	DROP CONSTRAINT [DF__Teacher__Single__5441852A];
ALTER TABLE Teacher
	DROP COLUMN Single;
