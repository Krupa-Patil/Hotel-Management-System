--Hotel Management System 
drop table hotel cascade constraint;
drop table customer cascade constraint;
drop table payment cascade constraint;
drop table reservation cascade constraint;
drop table cancellation cascade constraint;
drop table room_type cascade constraint;
drop table room cascade constraint;
drop table room_discount cascade constraint;
drop table services cascade constraint;
drop table room_status cascade constraint;
drop table employees cascade constraint;

create table hotel
(
    h_id int,
    h_name varchar(100),
    h_email varchar(100),
    h_descripation varchar(100),
    h_locality varchar(100),
    h_city varchar(100),
    h_gst_no varchar(100),
    primary key(h_id)
);

insert into hotel values(001,'ITC_ROYAL','ITCROYAL@gmail.com','5_STAR HOTEL','AHMED_NAGAR','KOLKATA','01BET29ADOP');
insert into hotel values(002,'ITC_BENGAL','ITCBENGAL@gmail.com','5_STAR HOTEL','STAR_COLONY','WESTBENGAL','02BET29ADOP');
insert into hotel values(003,'ITC_MAURYA','ITCMAURYA@hotmail.com','5_STAR HOTEL','ROHINI_NAGAR','DELHI','03BET29ADOP');
insert into hotel values(004,'ITC_GRAND_BHARAT','ITCGRANDBHARAT@rediff.com','7_STAR HOTEL','GURU_NAGAR','GURUGRAM','04BET29ADOP');
insert into hotel values(005,'ITC_GRAND_GOA','ITCGRANDGOA@gmail.com','7_STAR HOTEL','AAREY_COLONY','GOA','05BET29ADOP');
insert into hotel values(006,'ITC_GRAND_CHOLA','ITCGRANDCHOLA@gmail.com','7_STAR HOTEL','CHOLA_NAGAR','CHENNAI','06BET29ADOP');
insert into hotel values(007,'ITC_MARATHA','ITCMARATHA@yahoo.com','3_STAR HOTEL','GOSHALA_NAGAR','MUMBAI','07BET29ADOP');
insert into hotel values(008,'ITC_GARDENIA','ITCGARDENIA@gmail.com','7_STAR HOTEL','BRIGADE_ROAD','BENGALURU','08BET29ADOP');
insert into hotel values(009,'ITC_WINDSOR','ITCWINDSOR@gmail.com','7_STAR HOTEL','DIVYA_NAGAR','BENGALURU','09BET29ADOP');
insert into hotel values(010,'ITC_GRAND_CENTRAL','ITCGRANDCENTRAL@gmail.com','7_STAR HOTEL','BANDRA','MUMBAI','10BET29ADOP');
insert into hotel values(011,'ITC_KOHENUR','ITCKOHENUR@gmail.com','5_STAR HOTEL','DHRUVA_NAGAR','HYDERABAD','11BET29ADOP');
insert into hotel values(012,'ITC_MUGHAL','ITCMUGHAL@gmail.com','7_STAR HOTEL','KOHINOOR_NAGAR','AGRA','12BET29ADOP');
insert into hotel values(013,'ITC_RAJPUTANA','ITCRAJPUTANA@gmail.com','5_STAR HOTEL','RAJ_NAGAR','JAIPUR','13BET29ADOP');
insert into hotel values(014,'ITC_WHOTEL_BLR','ITCWHOTELBLR@gmail.com','7_STAR HOTEL','RAM_NAGAR','BENGALURU','14BET29ADOP');
insert into hotel values(015,'ITC_WHOTEL_AUG','ITCWHOTELAUG@gmail.com','7_STAR HOTEL','RAJA_SANSI','AURANGABAD','15BET29ADOP');
insert into hotel values(016,'ITC_WHOTEL_CMB','ITCWHOTELCMB@gmail.com','7_STAR HOTEL','RACE_COURSE','COIMBATOR','16BET29ADOP');
insert into hotel values(017,'ITC_WHOTEL_CHN','ITCWHOTELCHN@gmail.com','7_STAR HOTEL','MALLAPURAM','CHENNAI','17BET29ADOP');
insert into hotel values(018,'ITC_WHOTEL_MUSS','ITCWHOTELMUSS@gmail.com','7_STAR HOTEL','THE_SAVOY','MUSSOORIE','18BET29ADOP');
insert into hotel values(019,'ITC_WHOTEL_DEL','ITCWHOTELDEL@gmail.com','7_STAR HOTEL','DWARKA','DELHI','19BET29ADOP');
insert into hotel values(020,'ITC_WHOTEL_CHG','ITCWHOTELCHG@gmail.com','7_STAR HOTEL','PANCHKULA','CHANDIGARH','20BET29ADOP');
select *from hotel;
create table customer
(
    c_id int,
    c_name varchar(100),
    c_phone_no int,
    c_locality varchar(100),
    c_city varchar(100),
    c_age int,
    c_id_proof varchar(100),
    h_id int,
    primary key(c_id),
    foreign key(h_id) references hotel(h_id)
);

insert into customer values(170001,'Sharat',1234567891,'Vidyanagar','Hubli',30,'Aadhar',001);
insert into customer values(170002,'Hina Kamdar',1234567892,'Lakshminagar','Gokak',25,'Pan Card',002);
insert into customer values(170003,'Rohan',1234567893,'Railway Quarters','Hospet',28,'Aadhar',003);
insert into customer values(170004,'Krupa',1234567894,'Ram Nagar','Pune',40,'Pan Card',004);
insert into customer values(170005,'Abhishek',1234567895,'Court Quarters','Calcutta',26,'Aadhar',005); 
insert into customer values(170006,'Hrithik',1234567896,'Range Hill Estate','Meerut',19,'Voter Card',006);
insert into customer values(170007,'Nupur Raval',1234567897,'Kalyani Nagar','Mumbai',53,'Aadhar',007);
insert into customer values(170008,'Navdeep Singh',1234567898,'Viman Nagar','Agra',65,'Voter Card',008);
insert into customer values(170009,'Divya',1234567899,'Shivaji Nagar','Loonawala',39,'Pan Card',009);
insert into customer values(170010,'LOkesh',1234567890,'Jamalia','Chennai',52,'Voter Card',010);
insert into customer values(170011,'Ruchi Prabhakar',1334567896,'Netaji Nagar','Ranchi',19,'Aadhar',011);
insert into customer values(170012,'Rupesh Shetty',1235567896,'Ashok Nagar','Coimbatore',25,'Voter Card',012);
insert into customer values(170013,'Eddie Wable',5419689560,' Maya Nagar','New Delhi',39,'Pan Card',013);
insert into customer values(170014,'Sid Persaud',2913212955,' Hira apartments Andheri','Rajkot',23,'Aadhar',014);
insert into customer values(170015,'Jasmin Kohli',4017786100,' Nehagunj','Nagpur',73,'Pan Card',015);
insert into customer values(170016,'Siddharth',2913212955,'Sahil heights ','Darjeeling',41,'Voter Card',016);
insert into customer values(170017,'Devika Shetty',1201657995,'Narmada Nagar','Pilani',57,'Aadhar',017);
insert into customer values(170018,'Rahim Vasa',9745871096,' Parveen Society','Jammu',36,'Voter Card',018);
insert into customer values(170019,'Ujwal Brar',9487779025,'Nilima Chowk','Trichy',66,'Pan Card',019);
insert into customer values(170020,'Yamini George',7888520145,'Yerwada','Delhi',23,'Aadhar',020);
select *from customer;
create table payment
(
    p_id int,
    p_mode varchar(100),
    p_amount float,
    p_date date,
    c_id int,
    primary key(p_id),
    foreign key(c_id) references customer(c_id)
);

insert into payment values(7412558333,'UPI',56000,'01-01-2021',170001);
insert into payment values(7458198122,'UPI',48000,'06-06-2020',170002);
insert into payment values(7451623889,'DEBIT Card',45000,'26-12-2020',170003);
insert into payment values(1842258997,'PAYTM',28000,'13-01-2021',170004);
insert into payment values(9987425123,'UPI',30000,'15-08-2019',170005);
insert into payment values(7412558741,'GPAY',28000,'11-02-2019',170006);
insert into payment values(1859746321,'DEBIT Card',60000,'16-11-2020',170007);
insert into payment values(7412558966,'UPI',12500,'02-03-2021',170008);
insert into payment values(7412558854,'UPI',35000,'29-01-2020',170009);
insert into payment values(7412558456,'PHONEPE',28000,'12-03-2021',170010);
insert into payment values(7412558777,'GPAY',22500,'05-01-2021',170011);
insert into payment values(8456792133,'PAYTM',19500,'10-07-2020',170012);
insert into payment values(1458796378,'UPI',25000,'20-10-2020',170013);
insert into payment values(9874567856,'GPAY',19500,'30-09-2019',170014);
insert into payment values(7412558784,'DEBIT Card',34500,'25-11-2020',170015);
insert into payment values(4568791256,'VISA',13000,'09-02-2021',170016);
insert into payment values(7778956899,'UPI',11000,'31-01-2021',170017);
insert into payment values(6895214758,'PAYTM',25000,'28-05-2021',170018);
insert into payment values(8546974123,'DEBIT Card',9500,'01-12-2020',170019);
insert into payment values(7451269236,'UPI',13000,'28-02-2021',170020);
select *from payment;
create table reservation
(
    res_id int,
    booking_date date,
    duration_of_stay int,
    check_in_date date,
    check_out_date date,
    c_id int,
    primary key(res_id),
    foreign key(c_id) references customer(c_id)
);

insert into reservation values(78945,'30-12-2020',2,'31-12-2020','01-01-2021',170001);
insert into reservation values(88745,'2-06-2020',3 ,'03-06-2020','06-06-2020',170002);
insert into reservation values(98863,'24-12-2020',2 ,'25-12-2020','26-12-2020',170003);
insert into reservation values(74583,'08-01-2021',4 ,'09-01-2021','13-01-2021',170004);
insert into reservation values(85479,'11-08-2021',3 ,'12-08-2019','15-08-2019',170005);
insert into reservation values(66547,'08-02-2019',2,'09-02-2019','11-02-2019',170006);
insert into reservation values(78912,'10-11-2020',5 ,'11-11-2020','16-11-2020',170007);
insert into reservation values(12783,'26-02-2021',4 ,'27-02-2021','02-03-2021',170008);
insert into reservation values(56987,'27-01-2020',2 ,'28-01-2020','29-01-2020',170009);
insert into reservation values(87469,'05-05-2021',6 ,'06-05-2021','12-05-2021',170010);
insert into reservation values(74136,'31-12-2020',4 ,'01-01-2020','05-01-2021',170011);
insert into reservation values(14793,'06-07-2020',3 ,'07-07-2020','10-07-2020',170012);
insert into reservation values(74589,'19-10-2020',1,' 19-10-2020','20-10-2020',170013);
insert into reservation values(11226,'26-09-2019',3 ,' 27-09-2019','30-09-2019',170014);
insert into reservation values(22547,'23-11-2020',2 ,' 24-11-2020','25-11-2020',170015);
insert into reservation values(44879,'04-02-2021',4 ,' 05-02-2021','09-02-2021',170016);
insert into reservation values(14528,'25-01-2021',6,' 26-01-2021','31-01-2021',170017);
insert into reservation values(11997,'26-05-2021',1 ,' 27-05-2021','28-05-2021',170018);
insert into reservation values(99118,'27-11-2020',3 ,' 28-11-2020','01-12-2020',170019);
insert into reservation values(73195,'22-02-2021',5 ,' 23-02-2021','28-02-2021',170020);
select *from reservation;

create table cancellation
(
    can_room_no int,
    can_date date,
    c_id int,
    primary key(can_room_no),
    foreign key(c_id) references customer(c_id)
);

insert into cancellation values(112,'09-01-2021',170001);
insert into cancellation values(105,'25-12-2020',170002);
insert into cancellation values(119,'29-04-2021',170003);
insert into cancellation values(120,'30-10-2020',170004);
insert into cancellation values(108,'04-02-2020',170005);
insert into cancellation values(101,'10-08-2021',170006);
insert into cancellation values(102,'16-09-2021',170007);
insert into cancellation values(115,'21-02-2020',170008);
insert into cancellation values(107,'14-12-2020',170009);
insert into cancellation values(113,'09-11-2020',170010);
insert into cancellation values(111,'28-06-2021',170011);
insert into cancellation values(110,'31-03-2020',170012);
insert into cancellation values(103,'20-10-2021',170013);
insert into cancellation values(117,'01-12-2020',170014);
insert into cancellation values(104,'29-07-2021',170015);
insert into cancellation values(118,'06-11-2020',170016);
insert into cancellation values(114,'06-08-2021',170017);
insert into cancellation values(106,'13-04-2020',170018);
insert into cancellation values(116,'16-03-2020',170019);
insert into cancellation values(109,'19-01-2021',170020);
select *from cancellation;

create table room_type
(
    rt_name varchar(100),
    rt_description varchar(100),
    rt_cost float,
    primary key(rt_name)
);

insert into room_type values('SINGLE','SINGLEBED',1500);
insert into room_type values('DOUBLE','TWOBEDS',1900);
insert into room_type values('TRIPLE','THREEBEDS',2500);
insert into room_type values('PREMIUM','L1LUXURY',15000);
insert into room_type values('PRESIDENT','L2LUXURY',13000);
insert into room_type values('EXECUTIVE','L3LUXURY',11500);
insert into room_type values('CONNECTINGROOM','INTERCONNECT',27700);
insert into room_type values('QUAD','FOURBEDS',3700);
insert into room_type values('STUDIO','STUDIOBEDANDCOUCH',25000);
insert into room_type values('MURPHY','SOFABED',35000);
insert into room_type values('FLOORED','TRANSPARENTFLOOR',38000);
insert into room_type values('ADJOINING','COMMONWALL',38500);
insert into room_type values('ADJACENT','ACROSSTHEHALL',29500);
insert into room_type values('MINISUITE','BEDANDSITTINGAREA',38500);
insert into room_type values('DOUBLEDOUBLE','TWOQUEENBEDS',25500);
insert into room_type values('HOLLYWOODTWIN','HTWINBEDS',34500);
insert into room_type values('TWIN','TWOTWINBEDS',14500);
insert into room_type values('QUEEN','QUEENSIZEDBED',12800);
insert into room_type values('KING','KINGSIZEDBED',12500);
insert into room_type values('CABANA','ADJTOSWIMMINGPOOL',45000);
select *from room_type;

create table room
(
    r_no int,
    floor_no int,
    rt_name varchar(100),
    h_id int,
    primary key(r_no),
    foreign key(h_id) references hotel(h_id),
    foreign key(rt_name) references room_type(rt_name)
);

insert into room values(101,1,'SINGLE',001);
insert into room values(102,1,'DOUBLE',005);
insert into room values(103,1,'TRIPLE',004);
insert into room values(104,1,'PREMIUM',002);
insert into room values(105,1,'PRESIDENT',003);
insert into room values(106,1,'EXECUTIVE',006);
insert into room values(107,1,'SINGLE',007);
insert into room values(108,1,'QUAD',008);
insert into room values(109,1,'STUDIO',009);
insert into room values(110,1,'MURPHY',010);
insert into room values(111,1,'FLOORED',011);
insert into room values(112,1,'ADJOINING',012);
insert into room values(113,1,'ADJACENT',013);
insert into room values(114,1,'MINISUITE',014);
insert into room values(115,1,'DOUBLEDOUBLE',015);
insert into room values(116,1,'HOLLYWOODTWIN',016);
insert into room values(117,1,'TWIN',017);
insert into room values(118,1,'QUEEN',018);
insert into room values(119,1,'CONNECTINGROOM',019);
insert into room values(120,1,'CABANA',020);
select *from room;

create table room_discount
(
    d_rate float,
    start_month varchar(100),
    end_month varchar(100),
    rt_name varchar(100),
    primary key(d_rate),
    foreign key(rt_name) references room_type(rt_name)
);

insert into room_discount values(1000,'JAN','FEB','SINGLE');
insert into room_discount values(1500,'FEB','MAR','DOUBLE');
insert into room_discount values(2000,'MAR','APR','TRIPLE');
insert into room_discount values(12500,'MAR','APR','PREMIUM');
insert into room_discount values(11300,'APR','MAY','PRESIDENT');
insert into room_discount values(9600,'MAY','JUN','EXECUTIVE');
insert into room_discount values(25300,'MAY','JUN','CONNECTINGROOM');
insert into room_discount values(2500,'MAY','JUN','QUAD');
insert into room_discount values(21300,'JUN','JULY','STUDIO');
insert into room_discount values(28900,'JAN','APR','MURPHY');
insert into room_discount values(37000,'FEB','MAY','FLOORED');
insert into room_discount values(37800,'JAN','APR','ADJOINING');
insert into room_discount values(22000,'JUN','NOV','ADJACENT');
insert into room_discount values(21900,'JULY','AUGUST','MINISUITE');
insert into room_discount values(19700,'JULY','AUGUST','DOUBLEDOUBLE');
insert into room_discount values(29900,'SEPT','OCT','HOLLYWOODTWIN');
insert into room_discount values(11600,'SEPT','OCT','TWIN');
insert into room_discount values(9800,'OCT','NOV','QUEEN');
insert into room_discount values(11800,'OCT','NOV','KING');
insert into room_discount values(43200,'NOV','DEC','CABANA');
select * from room_discount;

create table services
(
    s_num int,
    s_name varchar(100),
    s_cost float,
    s_description varchar(100),
    r_no int,
    primary key(s_num),
    foreign key(r_no) references room(r_no)
);

insert into services values(1,'FOOD DELIVERY',1000,'FOOD DELIVERED DIRECTLY TO YOUR ROOM',107);
insert into services values(2,'SPA',300,'RELAXING MASSAGE',109);
insert into services values(3,'OUTDOOR GAMES',0,'EXCITING OUTDOOR FUN ACTIVITIES',118);
insert into services values(4,'INDOOR GAMES',500,'BOARD GAMES OR VIDEO GAMES',113);
insert into services values(5,'ANNIVERSARY CAKE',0,'SPECIAL CUSTOM MADE CAKE ON YOUR SPECIAL DAY',103);
insert into services values(6,'BED',200,'EXTRA BED',105);
insert into services values(7,'TOUR GUIDE',400,'none',116);
insert into services values(8,'SWIMMING COACH',500,'LEARN SWIMMING EASILY',104);
insert into services values(9,'FOOD DELIVERY',1000,'FOOD DELIVERED DIRECTLY TO YOUR ROOM',106);
insert into services values(10,'OUTDOOR GAMES',0,'EXCITING OUTDOOR FUN ACTIVITIES',117);
insert into services values(11,'SWIMMING COACH',500,'LEARN SWIMMING EASILY',102);
insert into services values(0,'BED',200,'EXTRA BED',114);
insert into services values(12,'SPA',300,'RELAXING MASSAGE',112);
insert into services values(13,'FOOD DELIVERY',1000,'FOOD DELIVERED DIRECTLY TO YOUR ROOM',120);
insert into services values(14,'OUTDOOR GAMES',0,'EXCITING OUTDOOR FUN ACTIVITIES',101);
insert into services values(15,'BED',200,'EXTRA BED',110);
insert into services values(16,'TOUR GUIDE',400,'none',115);
insert into services values(17,'FOOD DELIVERY',1000,'FOOD DELIVERED DIRECTLY TO YOUR ROOM',111);
insert into services values(18,'SPA',300,'RELAXING MASSAGE',108);
insert into services values(19,'BED',200,'EXTRA BED',119);
select *from services;

create table room_status
(
    rs_no int,
    rs_empty int,
    rs_full int,
    r_no int,
    primary key(rs_no),
    foreign key(r_no) references room(r_no)
);

insert into room_status values(01,0,1,115);
insert into room_status values(02,0,1,112);
insert into room_status values(03,0,1,119);
insert into room_status values(04,1,0,104);
insert into room_status values(05,1,0,106);
insert into room_status values(06,0,1,117);
insert into room_status values(07,1,0,101);
insert into room_status values(08,0,1,110);
insert into room_status values(09,0,1,107);
insert into room_status values(010,1,0,113);
insert into room_status values(011,1,0,109);
insert into room_status values(012,0,1,118);
insert into room_status values(013,0,1,103);
insert into room_status values(014,0,1,116);
insert into room_status values(015,0,1,120);
insert into room_status values(016,1,0,105);
insert into room_status values(017,0,1,102);
insert into room_status values(018,1,0,114);
insert into room_status values(019,0,1,111);
insert into room_status values(020,1,0,108);
select *from room_status;

create table employees
(
    e_id int,
    e_name varchar(100),
    e_age int,
    e_phone_no int,
    e_locality varchar(100),
    e_city varchar(100),
    e_doj date,
    e_duty varchar(100),
    e_salary float,
    h_id int,
    primary key(e_id),
    foreign key(h_id) references hotel(h_id)
);

insert into employees values(1001,'ABHAY',21,12345,'AHMED_NAGAR','KOLKATA','30-03-2015','MANAGER',120000,001);
insert into employees values(1002,'SURYA',31,12354,'STAR_COLONY','WESTBENGAL','30-03-2013','MANAGER',130000,002);
insert into employees values(1003,'AMAN',35,21354,'ROHINI_NAGAR','DELHI','10-03-2003','COOK',13000,003);
insert into employees values(1004,'AMAR',25,23154,'GURU_NAGAR','GURUGRAM','20-05-2016','COOK',13500,004);
insert into employees values(1005,'ANTHONY',27,23514,'AAREY_COLONY','GOA','20-06-201','ROOM_SERVICE',12500,005);
insert into employees values(1006,'BABBAR',37,23541,'CHOLA_NAGAR','CHENNAI','25-07-2007','ROOM_SERVICE',12550,006);
insert into employees values(1007,'REKHA',32,56789,'GOSHALA_NAGAR','MUMBAI','21-06-2012','BARTENDER',15500,007);
insert into employees values(1008,'JOEL',33,65789,'BRIGADE_ROAD','BENGALURU','22-01-2011','CLEANER',11500,008);
insert into employees values(1009,'JOHN',22,91478,'DIVYA_NAGAR','BENGALURU','23-02-2010','ROOM_SERVICE',11400,009);
insert into employees values(1010,'STEPHEN',36,78945,'BANDRA','MUMBAI','24-04-2009','DESK',12400,010);
insert into employees values(1011,'KARTHIK',34,14785,'DHRUVA_NAGAR','HYDERABAD','25-05-2008','BARTENDER',12300,011);
insert into employees values(1012,'IQBAL',26,65478,'KOHINOOR_NAGAR','AGRA','26-07-2007','MANAGER',175000,012);
insert into employees values(1013,'AHMED',25,36974,'RAJ_NAGAR','JAIPUR','27-08-2006','COOK',17700,013);
insert into employees values(1014,'ANVESH',23,14712,'RAM_NAGAR','BENGALURU','28-10-2005','DESK',18800,014);
insert into employees values(1015,'AVINASH',28,32178,'RAJA_SANSI','AURANGABAD','29-12-2004','ROOM_SERVICE',19900,015);
insert into employees values(1016,'BASAVARAJ',29,78529,'RACE_COURSE','COIMBATORE','30-11-2003','BARTENDER',14700,016);
insert into employees values(1017,'GAUTAM',39,20859,'MALLAPURAM','CHENNAI','04-10-2002','DESK',14900,017);
insert into employees values(1018,'PRANAM',41,10784,'THE_SAVOY','MUSSOORIE','05-06-2017','COURIER',17800,018);
insert into employees values(1019,'KESHAV',34,60324,'DWARKA','DELHI','06-04-2018','GUARD',18900,019);
insert into employees values(1020,'ASHWIN',24,70487,'PANCHKULA','CHANDIGARH','07-10-2019','GUARD',19900,020);
select * from employees;

select*from hotel;
select*from customer;
select*from payment;
select*from reservation;
select*from cancellation;
select*from room_type;
select*from room; 
select*from room_discount;
select*from services;
select*from room_status;
select*from employees;

desc hotel;
desc customer;
desc payment;
desc reservation;
desc cancellation;
desc room_type;
desc room;
desc room_discount;
desc services;
desc room_status;
desc employees;

--Queries
--Multiple Table Join Operations - 15 Queries
--1)Disypay the type of rooms present in the hotel with there room numbers
select h_name, r_no, rt_name
from (
     (
     (hotel left outer join room on hotel.h_id=room.h_id)
            left outer join room_status on room.r_no = room_status.r_no)
            left outer join room_type on room.rt_name = room_type.rt_name)
            where hotel.h_id = room.h_id;
    
--2)Display the employee whose age is grester then 25 and in which hotel he/she working and to which customers did he/she serve
select h_name,h_gst_no,e_id,e_name, e_doj, c_name, c_id_proof
from (hotel natural join employees)
      natural join customer
      where employees.e_age > 25;

--3)Display the customers details with there payment details
select c_name, c_phone_no, c_age, c_city, p_mode, p_amount, p_date
from (
     (payment full outer join customer on customer.c_id = payment.c_id)
              right outer join reservation on reservation.c_id = customer.c_id)
              where customer.c_id = payment.c_id;
      
--4)Display the discounts present for room type
select r_no, rt_name, d_rate
from (
     (room full outer join room_type on room.rt_name = room_type.rt_name)
           right outer join room_discount on room_type.rt_name = room_discount.rt_name)
           left outer join hotel on hotel.h_id = room.h_id;
       
--5)Display the present services given to rooms with there cost
select r_no, floor_no, s_name, s_cost, rs_full, rs_empty
from (room join services on room.r_no = services.r_no)
           join room_status on room_status.r_no = room.r_no;
     
--6)Display the customer who is from mumbai
select c_name, c_id_proof, c_city, h_name, rt_name
from (
     (customer join hotel on hotel.h_id = customer.h_id )
               join room on room.h_id = hotel.h_id)
               join room_type on room_type.rt_name = room.rt_name
               where c_city like '%Mumbai%';
       
--7)Display the hotels which are there in bengaluru
select h_id, h_name, h_city, e_id, e_name, e_city, c_id, c_name, c_city
from (hotel natural join employees)
      natural join customer
      where e_city like '%BENGALURU%';
      
--8)Display the rooms reserved by customers in the year 2021
select can_room_no, can_date, c_id, c_name
from (
     (cancellation full outer join customer on customer.c_id = cancellation.c_id )
                   full outer join reservation on reservation.c_id = customer.c_id)
                   where to_char(can_date,'yyyy') = '2021';

--9)Display the room type booked by customers
select c_name, r_no, rt_name
from (
     (
     (hotel left outer join customer on hotel.h_id = customer.h_id)
            left outer join payment on customer.c_id = payment.c_id)
            left outer join room on room.h_id = customer.h_id)
            where hotel.h_id = customer.h_id;

--10)Display the customers who had made the payment and the customes have showen there Aadhar card as id proof
select c_name, c_id, p_id, p_mode, c_id_proof, can_date
from (customer natural join payment)
      natural join cancellation
      where customer.c_id_proof = 'Aadhar';

drop table hotel;
drop table customer;
drop table payment;
drop table reservation;
drop table cancellation;
drop table room_type;
drop table room;
drop table room_discount;
drop table services;
drop table room_status;
drop table employees;