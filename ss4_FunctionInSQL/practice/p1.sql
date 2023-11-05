select  address , count(studentID) as countStudent from student 
	group by address ;
    
select s.studentID ,s.studentName , avg(m.mark) from student s
	join mark m on s.studentID = m.studentID 
    group by s.studentID;
    
select s.studentID ,s.studentName , avg(m.mark) as avg_mark from student s
	join mark m on s.studentID = m.studentID 
    group by s.studentID
    having avg_mark > 5  ;
    
    select s.studentID ,s.studentName , avg(m.mark) as avg_mark from student s
		join mark m on s.studentID = m.studentID 
		group by s.studentID
		having avg_mark >= all (select avg(mark) from mark group by mark.studentID ) ;
    
    select avg(mark) from mark group by mark.studentID;
    