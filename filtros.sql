-- Criação das tabelas
CREATE TABLE produtos (
id INT PRIMARY KEY,
nome VARCHAR(50),
categoria VARCHAR(30),
preco DECIMAL(10, 2),
em_estoque BOOLEAN
);

CREATE TABLE vendas (
id INT PRIMARY KEY,
produto_id INT,
quantidade INT,
data_venda DATE,
FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo dados
INSERT INTO produtos
VALUES (1, 'Notebook', 'Informática', 3500.00, TRUE),
(2, 'Mouse', 'Informática', 45.00, TRUE),
(3, 'Cadeira', 'Móveis', 850.00, FALSE),
(4, 'Teclado', 'Informática', 120.00, TRUE);

INSERT INTO vendas
VALUES (101, 1, 2, '2023-10-01'),
(102, 2, 15, '2023-10-02'),
(103, 3, 1, '2023-10-02');

-- Consulta simples
SELECT *
FROM produtos;

