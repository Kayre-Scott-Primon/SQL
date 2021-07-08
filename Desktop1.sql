create database Desktop;

use Desktop;

CREATE table statusDesktop
(
	id int unsigned not null auto_increment,
	statusFont boolean default false,
    statusPush boolean default false,
    statusEnergy boolean default false,
    primary key(id)
);

insert into statusDesktop (statusFont, statusPush, statusEnergy) values (true,false,false);
