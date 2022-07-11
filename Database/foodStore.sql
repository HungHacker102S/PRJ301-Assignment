USE [master];
GO

IF DB_ID('foodstore') IS NOT NULL 
BEGIN
	ALTER DATABASE [foodstore] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE [foodstore];
END

CREATE DATABASE [foodstore];
GO
USE [foodstore];
GO

create table [Account] (
userid int identity(1,1) primary key,
fullname nvarchar(max),
[password] nvarchar(max),
phone varchar(10),
[email] nvarchar(64) not null,
[role] bit,

unique ([email])
);

create table Category (
cid int primary key,
cName nvarchar(max),

)

create table [Product] (
productid int identity(1,1) primary key,
pname nvarchar(max),
quantity int,
[image] nvarchar(max),
pPrice real,
cid int,

foreign key (cid) references [Category](cid) on delete cascade
);

create table Bill (
billid int identity(1,1) primary key,
userid int,
productid int,
bPrice real,

foreign key (userid) references [Account](userid) on delete cascade,
);

create table orders (
oderid int identity(1,1) primary key,
productid int,
billid int, 
[oPrice] real,

foreign key (billid) references [Bill](billid) on delete cascade,
foreign key (productid) references [Product](productid) on delete cascade,
);



