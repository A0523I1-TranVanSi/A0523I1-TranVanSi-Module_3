-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
	--  Dùng group by 
	select subID , subName , max(creadit) as Max 
		from subject 
        group by subID 
        having Max = (select max(creadit) from subject ) ;
    
    -- ko Dùng group by 
	select * from subject 
		where creadit = ( select max(creadit) from subject ) ; 
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
	-- ko Dùng group by 
	select s.subName , m.mark from mark m
		join subject s on m.subID = s.subID 
        where mark = (select max(mark) from mark ) ; 
        
	-- Dùng group by 
	select s.subID ,s.subName , max(m.mark) as Max  from mark m 
		join subject s on m.subID = s.subID  
        group by s.subID 
        having Max = (select max(mark) from mark )  ;
        
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
	select s.studentID , s.studentName , avg(m.mark) as `Diem trung binh` 
		from student s 
        join mark m on s.studentID = m.studentID 
        group by s.studentID 
        order by `Diem trung binh`  desc ; 
    
    
    
    
    
    
    
    
    
    
    
    



