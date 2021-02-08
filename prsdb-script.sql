use sys;

drop database if exists prsdb;

create database prsdb;

use prsdb;

create table users (
id int not null primary key auto_increment,
username varchar(30) not null unique,
password varchar(30) not null,
firstname varchar(30) not null,
lastname varchar(30) not null,
phone varchar(12) null,
email varchar(255),
isReviewer tinyint not null default 0,
isAdmin tinyint not null default 0

 );

insert into users (
			username, password, firstname, lastname, isReviewer, isAdmin)
	values ('sa', 'sa', 'System', 'Admin', 1, 1);

create table vendors (
id int not null primary key auto_increment,
code varchar(10) not null unique,
name varchar(30) not null,
address varchar(30) not null,
city varchar(30) not null,
state varchar(2) not null,
zip varchar(5) not null,
phoneNumber varchar(12),
email varchar(225)
);

insert into vendors (code, name, address, city, state, zip)
			values ('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '84744'),
					('TARG', 'Taregt', '1 Target Way', 'Minneapolis', 'MN', '12323'),
					('MEIJ', 'Meijer', '1 Meijer WaY', 'Atlanta', 'MI', '98762');
                    
create table Request (
id int not null primary key auto_increment,
Description varchar(80) not null,
Justification  varchar(80) not null,
RejectionReason varchar(80) null,
DeliveryMode varchar(20) not null default 'PickUp',
Status varchar(20) not null default 'NEW',
Total decimal(11,2) not null default 0,
dateNeeded date not null,
submittedDate datetime not null default current_timestamp,
userId int not null, 
foreign key (userId) references users(id)
);

insert into Request (description, justification, dateNeeded, userID)
			values ('1st request', 'just because', '2021-03-01', (select id from users where username = "sa" ) ),
                      ('2nd request', 'because I say so',  '2021-03-01', (select id from users where username = 'sa'));  
create table Products (
id int not null primary key auto_increment,
PartNumber varchar(30) not null unique,
Name varchar(30) not null,
Price decimal(11,2) not null,
Unit varchar(30) not null,
PhotoPath varchar(225) null,
vendorId int not null,
foreign key (vendorId) references vendors(id)
);
		insert into products (PartNumber, Name, Price, Unit, vendorId)
					values ('ECHO', 'Echo', 40, 'each', 1),
							('ECHODOT', 'Echo Dot', 15, 'each', 1);
                    
create table LineItem (
id int not null primary key auto_increment,
RequestId int not null,
ProductsId int not null,
quantity int not null default 1,
foreign key (requestId) references request(id),
foreign key (ProductsId) references products(id),
constraint requestId_productId unique (requestId, ProductsId)
);

Insert into LineItem (requestId, productsId, quantity)
			values ((select id from request where id = 1), (select id from products where partNumber = 'ECHO'), 3),
					(( select id from request where id = 1), ( select id from products where partNumber = 'ECHODOT'), 5);
					
					