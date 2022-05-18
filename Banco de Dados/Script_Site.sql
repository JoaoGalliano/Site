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
nomeUsuario varchar (45),
email varchar(45),
fkPerfil int,
foreign key (fkPerfil) references perfil (idPerfil)
);

             -- INSERT USUARIO
insert into usuario values
(null, 'João', 'joao@email.com', 1);

---------------------------------------------------------------------------------------------------------------------------------------
-- TABELA POST (POSTS, SUAS CURTIDAS, COMENTÁRIOS E DATA)
create table post(
idPost int primary key auto_increment,
descpost text,
dataPost datetime,
statusPost boolean default 0,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

-- INSERIR POST
insert into post values 
(null, 'Aqui você tem um espaço para compartilhar com o mundo o que tem de melhor!', now(), null, 1);
-----------------------------------------------------------------------------------------------------------------------------

-- TABELA INTERAÇÃO (STATUS DO POST, DATA, QUEM REAGIU/COMENTOU EM QUAL POST)

create table interacao(
dataInt int auto_increment,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
fkPost int,
foreign key (fkPost) references post (idPost),
tipo varchar(20), 
check(tipo = 'Comentário' or tipo = 'Curtida' or tipo = 'Descurtida'),
descInt text,
statusInt boolean default 0,
primary key (dataInt, fkUsuario, fkPost)
);
-- INSERIR INTERAÇÃO 
----------------------------------------------------------------------------------------
 select*from usuario join post on idUsuario = fkUsuario;