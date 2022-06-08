create database site;
use site;

----------------------------------------------------------------------------------------------------------------------------------------
-- TABELA PERFIL (ADMIN E USUARIO)
create table perfil(
idPerfil int primary key auto_increment,
descPerfil varchar(45) 
);

-- INSERIR PERFIL
insert into perfil values
(null, 'Administrador'),
(null, 'Usuario');

---------------------------------------------------------------------------------------------------------------------------------------
-- TABELA USUÁRIO (USUÁRIO FINAL)
create table usuario(
id int primary key auto_increment,
nome varchar (45),
email varchar(45),
idade int,
senha varchar(30),
fkPerfil int default 1,
foreign key (fkPerfil) references perfil (idPerfil)
);

             -- INSERT USUARIO

---------------------------------------------------------------------------------------------------------------------------------------
-- TABELA POST (POSTS, SUAS CURTIDAS, COMENTÁRIOS E DATA)
create table aviso(
id int primary key auto_increment,
titulo varchar(100),
descricao text,
statusPost char default 0,
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);
select*from aviso;
