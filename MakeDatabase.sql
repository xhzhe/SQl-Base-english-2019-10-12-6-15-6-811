create database student_examination_sys;
use student_examination_sys;
create table if not exists student
(
    id   int(12)     not null auto_increment,
    name varchar(50) not null default '',
    age  int(5)      not null default 0,
    sex  varchar(10) not null default '',
    primary key (id)
);
create table if not exists subject
(
    id          int(12)      not null auto_increment,
    subject     varchar(50)  not null default '',
    teacher     varchar(50)  not null default '',
    description varchar(500) not null default '',
    primary key (id)
);
create table if not exists score
(
    id         int(12) not null auto_increment,
    student_id int(12) not null,
    subject_id int(12) not null,
    score      int(5)  not null default 0,
    primary key (id),
    foreign key (student_id) references student (id),
    foreign key (subject_id) references subject (id)
);