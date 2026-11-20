create database biblioteca;
use biblioteca;

create table autor (cod_autor int not null auto_increment,
nacionalidade varchar (30),
nome_autor varchar (60),
primary key (cod_autor)
);

create table categoria (cod_cat int not null auto_increment,
desc_cat varchar (40),
primary key (cod_cat)
);

create table livro (isbn int not null auto_increment,
titulo_livro varchar (100),
editora varchar (50),
ano int, 
cod_cat int not null,
primary key (isbn),
foreign key (cod_cat) references categoria (cod_cat)
);

create table autor_livro (cod_autor int not null,
isbn int not null,
primary key (cod_autor, isbn),
foreign key (cod_autor) references autor (cod_autor),
foreign key (isbn) references livro (isbn)
); 
