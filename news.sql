create database newsreport character set utf8;
use newsreport;

create table admin (
    id int not null auto_increment,
    username varchar(50) not null,
    password varchar(50) not null,
    primary key (id)
);
create table news (
    id int not null auto_increment,
    title varchar(50) not null,
    author varchar(20) not null,
    source varchar(20) not null,
    content text not null,
    dateline int not null,
    primary key (id)
);
