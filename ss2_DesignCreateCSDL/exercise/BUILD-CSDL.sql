create database quanlybanhang ; 
create table customer(
	cID int primary key , 
    cName varchar(20) , 
    cAge varchar(20) 
);
create table `order` (
	oID int primary key , 
    oDate date , 
    oToltalPrice varchar(20) , 
    cID int , 
    foreign key (cID) references customer(cID) 
); 
create table product(
	pID int primary key , 
    pName varchar(20) , 
    pPrice varchar(20) 
);
create table orderDetail(
	oID int , 
    pID int , 
    odQTy varchar(20) , 
    foreign key (oID) references `order`(oID),
    foreign key (pID) references product(pID)
);











