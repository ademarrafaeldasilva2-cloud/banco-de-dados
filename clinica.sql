create table donos(
id_dono serial primary key,
nome varchar(100) not null,
telefone varchar(30),
endereco varchar(200)
);

create table animais(
id_animal serial primary key,
nome varchar(100) not null,
especie varchar(100) not null,
raca varchar(100) not null,
id_dono int not null,
foreign key (id_dono) references donos(id_dono)
);

create table consulta(
id_consulta serial primary key,
id_animal int not null,
data_consulta date not null,
veterinario varchar(100) not null,
receita text,
diagnostico text,
foreign key (id_animal) references animais(id_animal)
);
