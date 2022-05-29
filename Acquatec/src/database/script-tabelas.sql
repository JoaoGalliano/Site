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
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(45),
senha varchar(30),
fkPerfil int,
foreign key (fkPerfil) references perfil (idPerfil)
);

             -- INSERT USUARIO
insert into usuario values
(null, 'João', 'joao@email.com', 1234, 1);

---------------------------------------------------------------------------------------------------------------------------------------
-- TABELA POST (POSTS, SUAS CURTIDAS, COMENTÁRIOS E DATA)
create table aviso(
id int primary key auto_increment,
descPost text,
statusPost char default 0,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);