use curso_sql;

create table pedidos
(
	id int unsigned not null auto_increment,
    descrição varchar(100) not null,
    valor double not null default '0',
    pago varchar(3) not null default 'não',
    primary key (id)
);

insert into pedidos (descrição, valor) values ('TV',3000);
insert into pedidos (descrição, valor) values ('Geladeira',1400);
insert into pedidos (descrição, valor) values ('DVD PLayer', 300);

select * from pedidos;

call limpa_pedidos();

create table estoque
(
	id int unsigned not null auto_increment,
    descrição varchar(50) not null,
    quantidade int not null,
    primary key (id)
);

create trigger gatilho_limpa_pedidos before insert on estoque for each row call limpa_pedidos;

select * from pedidos;

insert into estoque (descrição, quantidade) values ('fogao',5);

select * from estoque;

update pedidos set pago = 'Sim' where id = 8;

insert into estoque (descrição, quantidade) values ('forno',3);