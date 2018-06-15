create table studentmaster(studentid varchar(10) primary key,password varchar(30),firstname varchar(30) not null, middlename varchar(30),lastname varchar(30), collegename varchar(50),enrollnumber varchar(10),dateofentry varchar(30),emailid varchar(40) not null);

insert into studentmaster values("abc","abc","a","b","c","engg","444","Sun Feb 19 22:32:37 IST 2012","mail");


create table collegereg(collegeid varchar(30) primary key,password varchar(30) not null,status varchar(1),dateofentry varchar(30));

insert into collegereg values("eca","eca","1","Tue May 24 11:41:12 IST 2011");

create table collegeprofile(collegeid varchar(30),nameofcollege varchar(50) not null,university varchar(50) not null,collegeaddress varchar(50) not null,contactdetails varchar(15) not null,collegesite varchar(50) not null,lastaccessdate varchar(30),foreign key(collegeid) references collegereg(collegeid));

insert into collegeprofile values("eca","engg clg,ajmer","anna","chennai","876875","www.ksr.com","Sun Feb 19 22:32:37 IST 2012");

create table companyreg(companyid varchar(30) primary key,password varchar(30) not null,status varchar(1),dateofentry varchar(30));

insert into companyreg values("google","google","1","Tue May 31 16:14:20 IST 2011");

create table companyprofile(companyid varchar(30),nameofcompany varchar(50) not null,companyaddress varchar(50) not null,contactdetails varchar(15) not null,companysite varchar(50) not null,lastaccessdate varchar(30),foreign key(companyid) references companyreg(companyid));

insert into companyprofile values("google","google","chennai","5345","www.google.com","Sun Feb 19 22:32:37 IST 2012");

create table personal(studentid varchar(10),gender varchar(10) not null,dateofbirth varchar(30) not null,nationality varchar(30),countryofresidence varchar(30) not null,contactnumber varchar(15) not null,securityquest varchar(50),answer varchar(50),lastaccessdate varchar(30),industrialexp varchar(3),foreign key(studentid) references studentmaster(studentid));

insert into personal values("abc","male","8-4-1997","Indian","India","24235","Enter a question...","Enter you answers","Wed Feb 15 01:38:23 IST 2012","0");

create table documents(studentid varchar(10),docname varchar(50), doclink varchar(70),docdesc varchar(50),foreign key(studentid) references studentmaster(studentid));

insert into documents values("abc","Doc1089.mp3","../RootDocs/abc/Doc1089.mp3","doc1");

create table academic(studentid varchar(10),secboard varchar(10),secyop varchar(4),secscoretype varchar(15),secvalue varchar(4),sensecboard varchar(10),sensecyop varchar(4),sensecscoretype varchar(15),sensecvalue varchar(4),status varchar(3),foreign key(studentid) references studentmaster(studentid));

insert into academic values("abc","CBSE","2000","Percentage","80","CBSE","2012","Percentage","98","T");

create table graduation(studentid varchar(10),degree varchar(10),branch varchar(30),collegename varchar(30),university varchar(30),yob varchar(4),yop varchar(4),scoretype varchar(15),duration varchar(2),val varchar(3),foreign key(studentid) references studentmaster(studentid));

insert into graduation values("abc","BComm","Accounts","Amity,Delhi","Aaq","1999","2002","Percentage","3","88");

create table postgraduation(studentid varchar(10),pgdegree varchar(10),specialization varchar(30),institution varchar(30),university varchar(30),yob varchar(4),yop varchar(4),scoretype varchar(15),duration varchar(2),val varchar(3),foreign key(studentid) references studentmaster(studentid));

insert into postgraduation values("abc","MCA","ComputerApplication","Asam","AAUniv","2002","2004","Percentage","3","99");


create table diploma(studentid varchar(10),diplomadegree varchar(10),field varchar(30),organisation varchar(30),yearofpass varchar(4),description varchar(50),foreign key(studentid) references studentmaster(studentid));

create table doctorate(studentid varchar(10),doctoratedegree varchar(10),specialization varchar(30),organisation varchar(30),yearofpass varchar(4),description varchar(50),foreign key(studentid) references studentmaster(studentid));

create table professional(studentid varchar(10),expfield varchar(30),expyear varchar(3),companyname varchar(30),designation varchar(30),workprofile varchar(30),foreign key(studentid) references studentmaster(studentid));









create table jobpost(companyid varchar(10),jobid varchar(10),designation varchar(30),package varchar(10), location varchar(20),specifysec varchar(1),secpercent varchar(3),sesecpercent varchar(3),degree varchar(10),branch varchar(20),degpercent varchar(3),postdeg varchar(10),branch varchar(20),postdegpercent(3),desc varchar(50),dateofpost varchar(10),lastdatetoapply varchar(10));

