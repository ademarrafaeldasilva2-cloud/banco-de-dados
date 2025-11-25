create table medicos(
id_medico serial primary key,
nome varchar(100) not null,
especialidade varchar(100) not null,
horario_atendimento text not null
);

create table pacientes(
id_paciente serial primary key,
nome varchar(100) not null, 
telefone varchar(30) not null,
endereco text not null
);

create table consultas(
id_consulta serial primary key,
id_paciente int not null,
id_medico int not null,
data_horario timestamp not null,
sintomas text,
diagnostico text,
medicamentos text,
foreign key(id_paciente) references pacientes(id_paciente),
foreign key(id_medico) references medicos(id_medico)
);