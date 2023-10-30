create database moHinhDuLieu ;
create table phieuxuat(
	soPX int primary key , 
    NgayXuat date 
);
create table vattu(
	MaVTU varchar(20) primary key , 
    TenVTU varchar(50) 
);
create table ChiTietPX(
	soPX int , 
    MaVTU varchar(20), 			
    DGXuat varchar(20) , 
    SLXuat varchar(20) ,
    foreign key (soPX) references phieuxuat(soPX) , 
	foreign key (MaVTU) references vattu(MaVTU) 	
);
create table PhieuNhap(
	SoPN int primary key , 
    NgayNhap date 
);
create table ChiTietPN(
	MaVTU varchar(20),  
    SoPN int, 
    DGNhap varchar(20) , 
    SLNhap varchar(20) ,
    foreign key (MaVTU) references ChiTietPX(MaVTU), 
    foreign key (SoPN) references PhieuNhap(SoPN)
);
create table DonDH(
	SoDH int primary key , 
    NgayDH date 
);
create table ChiTietDDH(
	SoDH int,
    MaVTU varchar(20) , 
    foreign key (SoDH) references DonDH(SoDH),
    foreign key (MaVTU) references vattu(MaVTU)
);
create table NhaCC(
	MaNCC int primary key , 
    TenNCC varchar(50) , 
    DiaChi varchar(50) 
);
create table NCC_SDT(
	MaNCC int  ,
    SDT varchar(20) ,
    primary key(MaNCC,SDT) 
);
create table CungCap(
	MaNCC int ,
    SoDH int , 
    foreign key (MaNCC) references NCC_SDT(MaNCC),
    foreign key (SoDH) references DonDH(SoDH)
);











	