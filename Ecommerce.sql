create database Daraz 

use Daraz


--1 Admin data and login (no foreign key)
create table tbl_Admins (
aid int identity,
aname nvarchar (50),
aimg nvarchar (100),
ausername nvarchar (50) unique,
apassword nvarchar (50),
primary key(aid)

);

insert into tbl_Admins values('Syed Mubeen','image.jpg','Mubeen','pass')

--2 User data 
create table tbl_Users (
uid int identity,
uname nvarchar (50),
ufname nvarchar (50),
uimg nvarchar (100),
uemail nvarchar (50),
primary key(uid)

);


--3 User login (foreign key of user data)
create table tbl_userlogin (
ulid int identity,
uluser nvarchar (50),
ulpass nvarchar (50),
uid int not null,
primary key(ulid),
foreign key (uid) references tbl_Users (uid)
);


--4 categories data
create table tbl_Categories (
cid int identity,
cname nvarchar (50),
primary key (cid)
);


--5 products data (foreign key of categories)
create table tbl_products (
pid int identity,
pname nvarchar (50),
pdetails nvarchar (250),
pprize float,
cid int not null,
foreign key (cid) references tbl_Categories (cid),
primary key (pid)
)

alter table tbl_products 
add pStatus int

select * from tbl_products

update tbl_products set pStatus = 1

--6 Products images (foreign key of product data)
create table tbl_images (
iid int identity,
iname nvarchar (100),
pid int not null,
foreign key (pid) references tbl_products (pid),
primary key (iid)

)



create table tbl_Cart (
ctid int identity,
odate nvarchar (50),
oqty int,
pid int not null,
foreign key (pid) references tbl_products (pid),
primary key (ctid)
)







create table tbl_Orders (
oid int identity,
odate nvarchar (50),
oamount int,
oqty int,
ostatus int ,
pid int not null,
foreign key (pid) references products (pid),
primary key (oid)
)






