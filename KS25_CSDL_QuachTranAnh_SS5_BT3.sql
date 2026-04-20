/*
dữ liệu đầu vào: distance_km,d_status,trust_core
để tránh điểm âm sẽ để điều kiện lấy ra là trust_core>=80
khi mà distance_km được sắp xếp qua order by tăng dần, nếu distance 
bằng nhau sẽ tiến hành so sánh qua trust_core giảm dần 
*/
create database ss5bai3;
use ss5bai3;
select d_status, trust_core
from Drivers
where d_status = 'AVAILABLE' and trust_core >=80
order by distance_km asc, trust_score desc;	
