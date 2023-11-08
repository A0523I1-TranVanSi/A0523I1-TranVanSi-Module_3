-- B1 
create database demo ;
use demo ;  
-- B2
create table products(
	id int auto_increment primary key , 
    productCode varchar(20) not null , 
	productName varchar(50) not null ,
	productPrice varchar(20) not null , 
	productAmount int not null , 
	productDescription varchar(10) ,
	ProductStatus bit  
);
alter table products 
	modify ProductStatus varchar(2) check ( ProductStatus = 1 or ProductStatus = 2 ) ; 
insert into products
	value (1,"P-001","Tủ Lạnh" ,"5000",20,"new",1),
		(2,"P-002","Điều Hòa" ,"8000",15,"new",2),
        (3,"P-003","Nệm" ,"3000",30,"old",1),
        (4,"P-004","Tủ" ,"2000",50,"new",2),
        (5,"P-005","Giường" ,"10000",20,"old",2),
        (6,"P-006","Bếp" ,"5000",15,"old",1),
        (7,"P-007","Máy Giặc" ,"6000",20,"new",1); 

-- B3 
create unique index idx_product on products(productCode) ;
create index compos_idx_product on products(productName , productPrice ) ;
explain select * from products 
	where productCode = "P-003" ; 
explain select * from products 
	where productName = "Máy Giặc" or  productName = "Điều Hòa"  ; 
    
-- Trước khi tạo index 
select * from products 
	where productCode = "P-003" ;
select * from products 
	where  productName = "Máy Giặc" or  productName = "Điều Hòa"  ;

-- B4 
create view view_product as 
	select productCode , productName , productPrice , ProductStatus 
    from products ; 
    
select * from view_product ; 

create or replace view view_product as 
	select id , productName 
    from products 
    where ProductStatus = "1" ; 
    
drop view view_product ; 
-- B5 
delimiter // 
	create procedure info_product() 
		begin 
			select * from products ; 
		end // 
delimiter ; 
call info_product() ; 

delimiter // 
	create procedure add_product(
    id int , 
    productCode varchar(20) , 
	productName varchar(50)  ,
	productPrice varchar(20)  , 
	productAmount int  , 
	productDescription varchar(10) ,
	ProductStatus bit  ) 
		begin 
			insert into products 
				value (id ,productCode ,productName , productPrice ,  productAmount , productDescription,
				ProductStatus) ;
		end // 
delimiter ;  
call add_product(8,"P-008","Bàn Là" ,"500",20,"new",1) ; 

delimiter // 
	create procedure edit_product ( 
    id int , 
    productCode varchar(20) , 
	productName varchar(50)  ,
	productPrice varchar(20)  , 
	productAmount int  , 
	productDescription varchar(10) ,
	ProductStatus bit
    ) 
    begin 
		update products  
		set productCode = productCode   , 
			productName = productName  ,
			productPrice = productPrice  , 
			productAmount = productAmount  , 
			productDescription = productDescription ,
			ProductStatus = ProductStatus 
		where products.id = id ; 
	end // 
delimiter ; 
drop procedure edit_product ; 
call edit_product (8,"P-008","Bàn Là" ,"500",20,"new",1) ; 
    
delimiter // 
	create procedure del_product ( id_del int ) 
	begin 
		delete from products 
        where id = id_del ; 
	end // 
delimiter ; 
call del_product(8); 




















