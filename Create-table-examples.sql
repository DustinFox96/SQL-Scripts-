use bootcamp;
create table user (
	id int not null primary key auto_increment, 
    name varchar(50) not null,
    Address varchar(50) not null,
    City Varchar(50) not null,
    State varchar(2) not null,
    Zipcode varchar(5) not null,
    Email Varchar(100),
    Phone varchar(20),
    role varchar(50) not null
    );
    
    create table vechicle (
	id int not null primary key auto_increment,     
    year varchar(4) not null, 
    model varchar(25) not null,
    make varchar(20) not null,
    vin varchar(17) not null,
    trim varchar(25),
    ownerId int,
    foreign key (ownerId) references user(id) 
    );
    
    create table class (
    id int not null primary key auto_increment,
    subject varchar(50) not null,
    section int(3) not null,
    userid int,
    foreign key (userid) references user(id)
    );
    
    create table instructor (
    id int not null primary key auto_increment,
    Name varchar(50) not null,
    Subject varchar(25) not null,
    classid int,
    foreign key (classid) references class(id)
    );
    
    
    
    
    
    
    
    )
    