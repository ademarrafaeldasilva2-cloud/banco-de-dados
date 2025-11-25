CREATE TABLE instrutores (
    id_instrutor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_instrutor INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES instrutores(id_instrutor)
);

CREATE TABLE modulos (
    id_modulo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE aulas (
    id_aula SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    conteudo TEXT NOT NULL,
    id_modulo INT NOT NULL,
    FOREIGN KEY (id_modulo) REFERENCES modulos(id_modulo)
);

CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE progresso (
    id_aluno INT NOT NULL,
    id_aula INT NOT NULL,
    data_conclusao DATE,
    PRIMARY KEY (id_aluno, id_aula),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_aula) REFERENCES aulas(id_aula)
);
