create database ss3_practice ; 
create table class (
	classID int auto_increment primary key , 
    className varchar(10) not null , 
    startDate date not null ,
    `status` bit 
);
create table student(
	studentID int auto_increment primary key , 
    studentName varchar(10) not null , 
    address varchar(20) not null , 
    phone varchar(20) , 
    `status` bit , 
    classID int , 
    foreign key (classID) references class(classID) 
);
create table `subject` (
	subID int auto_increment primary key , 
    subName varchar(10) not null , 
    creadit tinyint not null default 1 check ( creadit >= 1 ) , 
    `status` bit default 1 
);
create table mark(
	markID int auto_increment primary key , 
    subID int not null , 
    studentID int not null , 
    mark float default 0 check (mark between 0 and 100 ) , 
    examTime tinyint default 1 , 
    foreign key (subID) references `subject`(subID) , 
    foreign key (studentID) references student(studentID) 
);

insert into class 
value (1,"A1","2008-12-20",1),
	(2,"A2","2008-12-22",1),
    (3,"B3",current_date,0);
    
insert into student 
value (1,"Hung","Ha noi","0912113113",1,1),
	(2,"Hoa","Hai phong","",1,1),
    (3,"Manh","HCM","0123123123",0,2);

insert into `subject` 
value (1,"CF",5,1),
	(2,"C",6,1),
    (3,"HDJ",5,1),
    (4,"RDBMS",10,1);
    
insert into mark (subID , studentID , mark , examTime ) 
value (1,1,8,1),
	(1,2,10,2),
    (2,1,12,1);
    
    
-- Practice 
select * from student ; 
select * from student 
	where `status` = true ; 
select * from `subject` 
	where creadit < 10 ;
    
select student.studentID , student.studentName , class.className 
	from student join class on student.classID = class.classID
	where class.className = "A1"; 

select  student.studentID , student.studentName , `subject`.subName , mark.mark 
	from student join mark on student.studentID = mark.studentID join `subject` on mark.subID = `subject`.subID 
    where `subject`.subName = "CF" ;

-- Exercise 

select * from student 
	where studentName like "h%" ; 

select * from class 
	where startDate like "%-12-%";
    
select * from `subject` 
	where   creadit <= 5 and creadit >= 3  ;  

update student set classID = "2" where (studentID = "1" ) ; 
	

  











