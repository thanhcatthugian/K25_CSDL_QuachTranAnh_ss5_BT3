/*
dữ liệu đầu vào: distance_km,d_status,trust_core
để tránh điểm âm sẽ để điều kiện lấy ra là trust_core>=80
khi mà distance_km được sắp xếp qua order by tăng dần, nếu distance 
bằng nhau sẽ tiến hành so sánh qua trust_core giảm dần 
*/
create database ss5bai3;
use ss5bai3;
create table Drivers(
id int primary key auto_increment,
d_status varchar(50) not null,
trust_score int not null,
distance_km decimal(10,2) not null
);
INSERT INTO Drivers (d_status, trust_score, distance_km) VALUES
('available', 95, 12.50),
('unavailable', 82, 0.00),
('available', 88, 5.20),
('unavailable', 65, 150.75),
('available', 92, 8.40),
('unavailable', 75, 45.30),
('available', 99, 2.10),
('unavailable', 85, 20.00),
('available', 78, 30.60),
('unavailable', 70, 0.00);
select d_status, trust_score
from Drivers
where d_status = 'AVAILABLE' and trust_score >=80
order by distance_km asc, trust_score desc;	
