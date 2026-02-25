
-- Criação do banco de dados
CREATE DATABASE escola;
USE escola;

-- Tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf VARCHAR(14) UNIQUE,
    email VARCHAR(100)
);

-- Tabela de Professores
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    email VARCHAR(100)
);

-- Tabela de Disciplinas
CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(50) NOT NULL,
    carga_horaria INT
);

-- Tabela de Turmas (Relacionando alunos e disciplinas)
CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    id_professor INT,
    id_disciplina INT,
    ano_letivo INT,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
