use curso_sql;

INSERT INTO funcionarios (nome,salario,departamento) values ( 'Fernando' , 1400 , 'TI' );
INSERT INTO funcionarios (nome,salario,departamento) values ( 'Guilherme' , 2500 , 'juridico' );
INSERT INTO funcionarios (nome,salario,departamento) values ( 'Jose' , 2400 , 'TI' );
INSERT INTO funcionarios (nome,salario,departamento) values ( 'isabela' , 1900 , 'juridico' );

select * from funcionarios ;

select * from funcionarios where salario > 2000;

select * from funcionarios where nome = 'Jose';

select * from funcionarios where id = 4;

update funcionarios set salario = salario * 1.1 where id = 1; 

/* set sql_safe_update = 0; */

update funcionarios set salario = salario * 1.1;

update funcionarios set salario = Round(salario * 1.1 , 2) /*  duas casas decimais */

DELETE  from funcionarios where id = 4;

insert into veiculos (funcionario_id , veiculo , placa) values (1,'carro1' , 'sb-0001');
insert into veiculos (funcionario_id , veiculo , placa) values (1,'carro1' , 'sb-0002');

select *from veiculos;

update veiculos set funcionario_id = 4 where id = 3;

insert into salarios (faixa , inicio , fim) values ('analista Jr' , 1000,2000);
insert into salarios (faixa , inicio , fim) values ('analista Senior' , 2000,3000);

select * from salarios ;

select * from funcionarios f where salario > 2000;

select nome , salario from f where f.salario > 2000;