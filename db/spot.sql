create table spot(
    spot_id int not null,
    latitude double(10,2) not null,
    longitude double(10,2) not null,
    spot_name varchar(20) not null,
    region varchar(10) not null,
   primary key(spot_id)
);