-- đánh index cho name 
create index idex_name on student(name) ; 
explain select * from student 
	where name = "nguyen ngoc cu" ; 
    
drop index idex_name on student ;

-- tạo view tạo view chỉ chứa thông tin id và name của student 
create view v_student as select id , name from student ; 
select * from v_student ; 
drop view v_student ; 

-- Java: viết hàm void có tên là findByName, 
-- có tham số truyền vào là name
-- void findByName(String name) {
--   // Body
-- }

-- in 
delimiter // 
	create procedure findByName(search_name varchar(50) ) 
		begin 
			select * from student 
			where name = search_name ; 
		end // 
delimiter ; 
call findByName("nguyen ngoc cu");
-- out 
delimiter // 
	create procedure findByNameOut( searchName varchar(20) , out a int ) 
		begin 
			select count(*) into a from student 
				where name = searchName ; 
		end // 
delimiter ;
call  findByNameOut("nguyen ngoc cu" , @a) ; 
select @a ; 

-- inout 
delimiter // 
	create procedure findByNameINOUT( inout searchName varchar(50) ) 
    begin 
		set searchName = (
			select count(*) from student 
            where name = searchName 
            ) ; 
	end // 
delimiter ; 
set @searchName = "nguyen ngoc cu" ; 
select @searchName; 
call findByNameINOUT(@searchName) ; 
select @searchName; 

-- function 
-- viết 1 function xếp loại học lực theo point 

    

    





















