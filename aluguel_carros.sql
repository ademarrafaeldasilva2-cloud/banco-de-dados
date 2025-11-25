create table veiculos(
id_veiculo serial primary key,
modelo text not null,
marca text not null,
categoria text not null,
placa varchar(10) not null,
status text not null
);

create table clientes(
id_cliente serial primary key,
nome varchar(100) not null,
telefone varchar(100) not null,
email varchar(100) not null,
cnh varchar(100) not null
);

create table alugueis(
id_aluguel serial primary key,
id_cliente int not null,
id_veiculo int not null,
data_retirada date not null,
data_devolucao date not null,
km_inicial float not null,
combustivel_inicial float not null,
km_final float not null,
combustivel_final float not null,
valor_base float not null,
valor_extras float not null,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_veiculo) references veiculos(id_veiculo)
);

create table manutencoes(
id_manutencao serial primary key,
id_veiculo int not null,
data_manutencao date not null,
tipo_servico text not null,
mecanico text not null,
foreign key (id_veiculo) references veiculos(id_veiculo)
);