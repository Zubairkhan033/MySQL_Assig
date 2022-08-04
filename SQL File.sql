create database SaintClaraServices 

use SaintclaraServices

drop table CustomerHeader

create table CustomerHeader(ClientId int primary key,FirstName char(225),
MiddleName char(225),LastName char(225),Gender char(225),DateOfBirth date,
City varchar(225),MartialStatus char(225),Age int,Employment char(225),
CompanyName varchar(225),CompanyAddress varchar(225))

select *from CustomerHeader

-- Values Insert

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(1,'Bisma','Khan','Naeem','Female','1998-01-02','Karachi','Single',24,
'null','null','null')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(2,'Rehman','Khan','Malik','Male','1990-03-03','Lahore','Married',32,
'Private Job','DynCorp','2 Link Road Welwyn')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(3,'Saniya','Khan','Malik','Female','1996-04-15','Islamabad',
'Single',26,'Private Job','Danone','2 Lane#2,Off Clifton')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(4,'Ajmal','Khan','Hussain','Male','1994-08-10','Karachi','Single',28,
'Govt Job','Comcast','College Road Township')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(5,'Adil','Khan','Rehman','Male','1995-09-12','Lahore','Married',27,
'Sales Job','Coca-Cola Company','Deenpura P.O.Box:2366')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(6,'Zohaib','Khan','Nasir','Male','1992-10-16','Islamabad','Married',30,
'Govt Job','Metro Cash&Carry','Azhar Office#14 F.D.A Market')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(7,'Sonia','Khan','Fahad','Female','2000-12-25','Rawalpindi','Single',22,
'Private Job','UPC','40-Talpur Road')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(8,'Hussain','Khan','Shah','Male','2002-1-26','Karachi','Single',20,
'Private Job','Global Print','#2,1st Floor,Gapan Centre')

insert into CustomerHeader(ClientId,FirstName,
MiddleName,LastName,Gender,DateOfBirth,
City,MartialStatus,Age,Employment,
CompanyName,CompanyAddress)values(9,'Naveed','Khan','Hussain','Male','1996-06-10','Lahore','Married',26,
'Private Job','Amazon.Com','United-State')

-- DDL COMMANDS
-- Employment to Employment varchar
alter table CustomerHeader
modify column Employment varchar(225)

-- New Column Qualification Added 
alter table CustomerHeader
add column Qualification char(225)

-- Drop Column MiddleName
alter table CustomerHeader
drop column MiddleName

-- DML COMMANDS
-- private Job to Sales Job
update CustomerHeader
Set Employment = 'SalesJob' Where ClientId = 9

-- ANOTHER TABLE

-- Customer Details Table

create table CustomerDetails(CustId int primary key, Clientid int, FatherName char(225),
MotherName char(225), Amount bigint, period int, Premium bigint,NomineeName char(225),
Date date,Time time, Foreign Key (Clientid) references CustomerHeader(ClientId))

-- drop table CustomerDetails

select *from CustomerDetails

-- DDL COMMANDS
-- int into bigint
alter table CustomerDetails
modify column period bigint
-- Plan column added
alter table CustomerDetails
Add column Plan varchar(225)

-- Drop time coumn

alter table CustomerDetails
drop column Time

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(1,2,'Naeem','Seema',30000,'3_Year',3000,'Wife',
'2009-01-15','Health Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(2,5,'Malik','Ashna',10000,'4_Year',1000,'Wife',
'2010-02-16','Car Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(3,7,'Malik','Romana',40000,'5_Year',4000,'Sister',
'2011-03-21','Life Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(4,8,'Hussnain','Fariha',20000,'2_Year',2000,'Brother',
'2012-06-20','Health Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(5,4,'Rehman','Sadia',30000,'30 Months',3000,'Sister',
'2013-08-05','Home Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(6,3,'Nasir','Zahida',10000,'3_Year',1000,'Brother',
'2014-12-30','Home Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(7,1,'Fahad','Naheed',40000,'4_Year',4000,'Sister',
'2015-11-31','Car Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(8,6,'Shah','Farha',20000,'5_Year',2000,'Wife',
'2016-07-08','Life Insurance')

insert into CustomerDetails(CustId, Clientid , FatherName ,MotherName , Amount, period , 
Premium ,NomineeName,Date,Plan)values(9,9,'Hussain','Shumaila',25000,'4_Year',2500,'Son',
'2017-01-09','Car Insurance')

-- DML COMMANDS
-- car insurance to Home Insurance
update CustomerDetails
Set Plan ='Home Insurance' where CustId = 9 

select *from CustomerDetails