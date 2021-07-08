create user 'andre'@'200.200.190.190' identified by 'milani123456';
create user 'lucas'@'localhost' identified by 'milani123456'; /*deste local apenas*/
create user 'andre'@'%' identified by 'milani123456'; /*qualquer local*/

grant all on curso_sql.* to 'lucas'@'localhost';

create user 'lucas'@'%' identified by 'lucasviagem'; /*deste local apenas*/
grant select on curso_sql.* to 'lucas'@'%';

grant insert on curso_sql.* to 'lucas'@'%';

grant insert on curso_sql.funcionarios to 'lucas'@'%';

revoke insert on curso_sql.funcionarios from'lucas'@'%';

revoke select on curso_sql.* from'lucas'@'%';

grant select on curso_sql.funcionarios to 'lucas'@'%';
grant select on curso_sql.veiculos to 'lucas'@'%';

revoke all on curso_sql.* from 'lucas'@'localhost';]

drop user 'lucas'@'%';
drop user 'lucas'@'localhost';

create user 'andres'@'%' identified by 'lucasviagem';
grant select on curso_sql.* to 'andres'@'%';
grant insert on curso_sql.funcionarios to 'andres'@'%';

select user from mysql.user;
show grants for 'andres'@'%';


