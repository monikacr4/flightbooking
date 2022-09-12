create table flight(
  -> flight_id int PRIMARY KEY,
  -> deptdate date,
  -> dept_from varchar(255),
  -> dept_to varchar(255),
  -> f_price int,
  -> no_seats int,
  -> airline_id int NOT NULL AUTOINCREMENT,
  -> dept_time time);

insert into flight values(100,'2022-09-11','Bengaluru','Belagavi',3000,150,NULL,'09:30');
insert into flight values(101,'2022-09-11','Bengaluru','Mumbai',6000,200,NULL,'11:30');
insert into flight values(102,'2022-09-11','Delhi','Bengaluru',15000,220,NULL,'1:30');
insert into flight values(103,'2022-09-12','Bihar','Bengaluru',5000,150,NULL,'10:30');
insert into flight values(104,'2022-09-13','Bengaluru','Chennai',7000,150,NULL,'17:30');
insert into flight values(105,'2022-09-21','Bengaluru','Belagavi',10000,150,NULL,'19:30');

 select* from flight;
+-----------+------------+-----------+-----------+---------+----------+------------+-----------+
| flight_id | deptdate   | dept_from | dept_to   | f_price | no_seats | airline_id | dept_time |
+-----------+------------+-----------+-----------+---------+----------+------------+-----------+
|       100 | 2022-09-11 | Bengaluru | Belagavi  |    3000 |      150 |          1 | NULL      |
|       101 | 2022-09-11 | Bengaluru | Mumbai    |    6000 |      200 |          2 | 11:30:00  |
|       102 | 2022-09-11 | Delhi     | Bengaluru |   15000 |      220 |          3 | 01:30:00  |
|       103 | 2022-09-12 | Bihar     | Bengaluru |    5000 |      150 |          4 | 10:30:00  |
|       104 | 2022-09-13 | Bengaluru | Chennai   |    7000 |      150 |          5 | 17:30:00  |
|       105 | 2022-09-21 | Bengaluru | Belagavi  |   10000 |      150 |       NULL | 19:30:00  |
+-----------+------------+-----------+-----------+---------+----------+------------+-----------+
 
CREATE TABLE traveller(
    -> trav_id int primary key auto_increment,
    -> trav_name varchar(255),
    -> trav_add varchar(255),
    -> trav_phone int,
    -> trav_email varchar(255));

 select* from traveller;
+---------+-----------+-----------+------------+---------------+
| trav_id | trav_name | trav_add  | trav_phone | trav_email    |
+---------+-----------+-----------+------------+---------------+
|       1 | Nandini   | Bihar     |        947 | nandini@gmail |
|       2 | poornima  | Belagavi  |        947 | poo@gmail     |
|       3 | pooja     | Bengaluru |        947 | pooja@gmail   |
|       4 | revathi   | Bengaluru |        989 | reva@gmail    |
|       5 | thoshi    | Bengaluru |        237 | thoshi@gmail  |
+---------+-----------+-----------+------------+---------------+

create table booked(
    -> flight_id int,foreign key(flight_id)references flight(flight_id),
    -> trav_id int,foreign key(trav_id)references traveller(trav_id),
    -> book_status varchar(255));

select* from booked;
+-----------+---------+-------------+
| flight_id | trav_id | book_status |
+-----------+---------+-------------+
|       100 |       3 | yes         |
|       101 |       4 | yes         |
|       102 |    NULL | no          |
|       103 |       1 | yes         |
|       104 |       5 | yes         |
+-----------+---------+-------------+



