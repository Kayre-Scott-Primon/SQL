use curso_sql;

select * from funcionarios;

select count(*) from funcionarios ;
select count(*) from funcionarios where salario > 1600;
select count(*) from funcionarios where salario > 1000 and departamento = 'TI';

select sum(salario) from funcionarios;
select sum(salario) from funcionarios where departamento = 'TI';

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'juridico';

select max(salario) from funcionarios;
select max(salario) from funcionarios where departamento = 'TI';

select min(salario) from funcionarios;
select min(salario) from funcionarios where departamento = 'juridico';

select distinct(departamento) from funcionarios; 

select * from funcionarios order by nome;
select * from funcionarios order by nome desc;
select * from funcionarios order by nome asc;
select * from funcionarios order by salario;
select * from funcionarios order by departamento;
select * from funcionarios order by departamento desc ,salario desc;

select * from funcionarios limit 2; 
select * from funcionarios limit 2 offset 2; 
select * from funcionarios limit 2, 2; 

select avg(salario) from funcionarios where departamento = 'TI';
select avg(salario) from funcionarios where departamento = 'juridico';
select departamento, avg(salario) from funcionarios group by departamento;
select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 2000;
select departamento, count(*) from funcionarios group by departamento;

select nome from funcionarios where departamento = 'juridico';
select nome from funcionarios where departamento in('TI' or 'juridico');
select nome from funcionarios where departamento in(select departamento from funcionarios group by departamento having avg(salario) > 2000);