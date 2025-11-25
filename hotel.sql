create table hospedes(
id_hospede serial primary key,
nome varchar(100) not null,
documento varchar(30) not null,
telefone varchar(30) not null,
email varchar(100) not null
);

create table quartos(
id_quarto serial primary key,
numero int not null,
tipo text not null,
categoria text not null,
status text not null
);

create table reservas(
id_reserva serial primary key,
id_hospede int not null,
data_inicio timestamp not null,
data_fim timestamp not null,
foreign key (id_hospede) references hospedes(id_hospede)
);

create table quarto_reserva(
id_reserva int not null,
id_quarto int not null,
primary key(id_reserva, id_quarto),
foreign key (id_reserva) references reservas(id_reserva),
foreign key (id_quarto) references quartos(id_quarto)
);

create table consumo(
id_consumo serial primary key,
id_reserva int not null,
descricao text,
valor float not null,
data_cobranca timestamp not null,
foreign key (id_reserva) references reservas(id_reserva)
);

create table checkins(
id_checkin serial primary key,
id_reserva int not null,
data_entrada timestamp not null,
data_saida timestamp not null,
foreign key(id_reserva) references reservas(id_reserva)
);