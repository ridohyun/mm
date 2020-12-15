create table my_course(
    my_course_id int not null,
    userid varchar(10) not null,
    my_course_name varchar(50) not null,
    region varchar(10) not null,
   primary key(my_course_id),
   foreign key(userid) references member (userid)
);