-- PASSOS INICIAIS: Criação da tabela com colunas obrigatórias e auto_increment
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Data_Cadastro DATE NOT NULL
);

-- Inserção da 1ª linha (Ana Silva) com a data atual
INSERT INTO Clientes (Nome, Email, Data_Cadastro) 
VALUES ('Ana Silva', 'ana.silva@example.com', '2026-06-01');

-- EXERCÍCIO ADICIONAL: Inserção das linhas 2 e 3 em um ÚNICO comando INSERT INTO
INSERT INTO Clientes (Nome, Email, Data_Cadastro) VALUES 
('Bruno Souza', 'bruno.souza@example.com', '2026-06-01'),
('Carlos Lima', 'carlos.lima@example.com', '2026-06-01');

-- FINAL DA ATIVIDADE: Excluir a tabela criada para o teste
DROP TABLE Clientes;





