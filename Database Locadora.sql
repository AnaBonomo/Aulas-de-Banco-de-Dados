create database Locadora; /*Cria um banco de dados 
/*drop database Empresa; -Excluir um banco de dados*/
use Locadora;

create table Midia (
	id int primary key not null,
    tipo varchar (45) 
    );
    
create table Genero (
	id int primary key not null,
	descricao varchar (45)
);

create table FaixaEtaria (
	id int primary key not null,
	descricao varchar (45)
);

create table Filme (
	id int primary key not null,
	nome_filme varchar (45),
    ano_lancamento int,
	duracao int,
	valor_diaria double,
	valor_venda double,
    Midia_id int not null,
    Genero_id int not null,
    FaixaEtaria_id int not null,
	foreign key (Midia_id) references Midia (id),
	foreign key (Genero_id) references Genero (id),
	foreign key (FaixaEtaria_id) references FaixaEtaria (id)
);
insert into Midia (id, tipo) values (1, 'Dvd');
insert into Midia (id, tipo) values (2, 'Digital');
insert into Midia (id, tipo) values (3, 'Analógico');
insert into Midia (id, tipo) values (4, 'TV');

insert into Genero (id, descricao) values (1, 'Romance');
insert into Genero (id, descricao) values (2, 'Ação');
insert into Genero (id, descricao) values (3, 'Suspence');
insert into Genero (id, descricao) values (4, 'Terror');
insert into Genero (id, descricao) values (5, 'Drama');

insert into FaixaEtaria (id, descricao) values (1, 'Livre');
insert into FaixaEtaria (id, descricao) values (2, '10 anos');
insert into FaixaEtaria (id, descricao) values (3, '12 anos');
insert into FaixaEtaria (id, descricao) values (4, '14 anos');
insert into FaixaEtaria (id, descricao) values (5, '16 anos');
insert into FaixaEtaria (id, descricao) values (6, '+18');

select * from Midia;
select * from Genero;
select * from FaixaEtaria;
select * from Filme;