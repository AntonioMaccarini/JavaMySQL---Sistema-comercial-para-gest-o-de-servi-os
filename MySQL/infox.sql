-- comentarios
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de deados use dbinfox;
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- O comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados na tabela (CRUD)
-- create -> insert

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'antonio augusto','991330034','joseassis','123456');

-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> select

select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'administrador','991331134','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'dfideliz','991330034','dfi','dfi');

-- a linha abaixo modifica dados na tabela (CRUDE)
-- udate -> update
update tbusuarios set fone = '9999999'where iduser =2;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete -> delete

delete  from tbusuarios where iduser = 3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes; 

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values('andre', 'rua tapajos, 154', '999-999','andre@hotmail.com');

select * from tbclientes;