
/* Script gerado para o modelo lógico */

CREATE TABLE FARMACIA (
    CNPJ_Farmacia VARCHAR(18) PRIMARY KEY,
    tel_Farmacia VARCHAR(15),
    nome_Farmacia VARCHAR(100),
    end_Farmacia VARCHAR(255)
);

CREATE TABLE PRODUTO (
    cod_produto INT PRIMARY KEY,
    qtd_produto INT,
    valor_produto DECIMAL(10, 2),
    fk_FARMACIA_CNPJ_Farmacia VARCHAR(18),
    CONSTRAINT FK_vende FOREIGN KEY (fk_FARMACIA_CNPJ_Farmacia)
        REFERENCES FARMACIA (CNPJ_Farmacia)
        ON DELETE CASCADE
);

CREATE TABLE FARMACEUTICO (
    RG_Farmaceutico VARCHAR(15) PRIMARY KEY,
    nome_farmaceutico VARCHAR(100),
    fk_FARMACIA_CNPJ_Farmacia VARCHAR(18),
    CONSTRAINT FK_trabalha FOREIGN KEY (fk_FARMACIA_CNPJ_Farmacia)
        REFERENCES FARMACIA (CNPJ_Farmacia)
        ON DELETE RESTRICT
);

