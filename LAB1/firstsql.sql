CREATE database Lab0;
USE Lab0;

CREATE table department(
	deptname varchar(5) primary key check(deptname in('CSE', 'ISE', 'ML'))
    );
    
CREATE table employee( 
	id int primary key,
    name varchar(30) not null,
    age int check(age > 0 and age <= 50),
    dept varchar(10),
    salary float,
    foreign key(dept) references department(deptname)
    );
    
CREATE table project(
	id int not null,
    eid int,
    title varchar(10),
    dept varchar(10),
    foreign key(dept) references department(deptname),
    foreign key(eid) references employee(id)
    );
    
CREATE table dependents(
	eid int,
    name varchar(10),
    relation varchar(10),
    foreign key(eid) references employee(id)
    );
    
INSERT into department values('CSE'), ('ISE'), ('ML');
select * from department;

INSERT into employee values(10, 'Anitej', 35, 'CSE', 40000), (11, 'Batul', 30, 'ISE', 45000), (12, 'Charan', 25, 'CSE', 60000), (13, 'Derek', 27, 'ML', 55000), (14, 'Ermina', 31, 'ML', 30000);
select * from employee;

INSERT into project values(1, 10, 'Arjun', 'CSE'), (2, 14, 'Bomesh', 'ISE'), (3, 13, 'Calli', 'ML'), (4, 12, 'Dhanush', 'CSE'), (5, 12, 'Sooraj', 'ISE');
select * from project;

INSERT into dependents values(10, 'Rohan', 'Son'), (12, 'Priya', 'Wife'), (14, 'Pooja', 'Mother');
select * from dependents;

select * from employee where dept = 'CSE';

select dept,count(*) from employee group by dept;

select dept,count(*) from employee where salary >= 50000 group by dept;
    


