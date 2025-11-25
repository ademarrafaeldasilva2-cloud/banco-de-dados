create table usuarios(
id_usuario serial primary key,
nome varchar(100) not null,
email varchar(100) not null,
senha varchar(666) not null,
data_cadastro date not null
);

CREATE TABLE seguidores (
id_usuario_seguidor INT NOT NULL,
id_usuario_seguido INT NOT NULL,
PRIMARY KEY (id_usuario_seguidor, id_usuario_seguido),
FOREIGN KEY (id_usuario_seguidor) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_usuario_seguido) REFERENCES usuarios(id_usuario)
);

create table posts(
id_post serial primary key,
id_usuario int not null,
conteudo_texto text not null,
imagem text ,
data_criacao date not null,
data_edicao date not null
);

create table historico_edicao(
id_edicao serial primary key not null,
id_post int not null,
conteudo_texto text not null,
imagem text,
data_edicao date not null,
foreign key (id_post) references posts(id_post)
);

create table comentarios(
id_comentario serial primary key,
id_post int not null,
id_usuario int not null,
conteudo text not null,
data_criacao date not null,
foreign key (id_post) references posts(id_post),
foreign key (id_usuario) references usuarios(id_usuario)
);
create table curtidas(
id_usuario int not null,
id_post int,
id_comentario int,
primary key (id_usuario, id_post, id_comentario),
foreign key(id_usuario) references usuarios(id_usuario),
foreign key(id_post) references posts(id_post),
foreign key(id_comentario) references comentarios(id_comentario)
);