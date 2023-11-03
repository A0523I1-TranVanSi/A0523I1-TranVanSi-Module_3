create database ss3_exercise ; 
create table customer(
	cID int auto_increment primary key , 
    name varchar(25) not null , 
    cAge tinyint not null 
);
create table oder(
	oID int auto_increment primary key , 
    cID int , 
    oDate datetime , 
    oTotalPrice int , 
    foreign key (cID) references customer(cID) 
);
create table product(
	pID int auto_increment primary key , 
    pName varchar(25) not null , 
    pPrice int not null 
);
create table oderDetail(
	oID int , 
    pID int , 
    odQTy int not null , 
    foreign key (oID) references oder(oID) , 
    foreign key (pID) references product(pID)
);

insert into customer 
	value (1,"Minh Quan",10),
		(2,"Ngoc Oanh",20),
        (3,"Hong Ha",50);

insert into oder
	value (1,1,"2006-3-21"), 
		(2,2,"2006-3-23"), 
        (3,1,"2006-3-16"); 

insert into product 
	value (1,"May Giat",3),
    (2,"Tu Lanh",5),
    (3,"Dieu Hoa",7),
    (4,"Quat",1),
    (5,"Bep Dien",2); 
    
insert into oderDetail 
	value (1,1,3),
		(1,3,7),
        (1,4,2),
        (2,1,1), 
        (3,1,8), 
        (2,5,4), 
        (2,3,3);

select oID , oDate , oTotalPrice from oder  ;

select o.cID, c.name  ,od.pID , p.pName  
	from customer c
	join oder o on c.cID = o.cID join  oderdetail od on o.oID = od.oID join product p on p.pID = od.pID ;

select * from customer 
	left join oder on customer.cID = oder.cID
    where oder.cID is null ; 

select o.oID , o.oDate , sum(od.odQTy*p.pPrice) as price_oder 
	from oder o 
	left join oderDetail od on o.oID = od.oID join product p on p.pID = od.pID 
    group by o.oID ; 

 













