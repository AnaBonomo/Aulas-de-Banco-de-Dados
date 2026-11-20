create database Exemplo_Empresa; 

Use Exemplo_Empresa; 

create table Cliente (id_cliente int not null auto_increment,
nome_cliente varchar(60), 
end_cliente varchar (80),
cidade_cliente varchar (80), 
tel_cliente varchar (20),
status_cliente char (1),
primary key (id_cliente)
);

create table Empresa (id_empresa int not null auto_increment,
nome_empresa varchar (60),
cnpj_empresa varchar (15),
end_empresa varchar (80),
tel_empresa varchar (20),
primary key (id_empresa)
);

