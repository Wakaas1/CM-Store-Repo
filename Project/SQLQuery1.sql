create procedure getALLteachersWithSubjects
as
begin
select tName,deptName,DesignName,subName from teachers,departmens,designations,subjects,subjects_Teachers
where
departmens.id=teachers.Department_id
and
designations.id=teachers.Designation_id
and
teachers.id=subjects_Teachers.Teacher_id
and
subjects.id=subjects_Teachers.Subjects_id
end


exec getALLteachersWithSubjects