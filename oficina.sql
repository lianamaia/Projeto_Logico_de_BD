CREATE DATABASE oficina_db;

USE oficina_db;

-- Criando a tabela Cliente
CREATE TABLE Cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    CPF CHAR(11) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    CONSTRAINT unique_cpf_client UNIQUE (CPF),
    CONSTRAINT unique_phone_number_client UNIQUE (telefone),
    CONSTRAINT unique_email_client UNIQUE (Email)
);

-- Criando a tabela Veículos
CREATE TABLE Veiculo (
    veiculo_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano VARCHAR(4) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

-- Criando a tabela Serviço
CREATE TABLE Servico (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    preco FLOAT DEFAULT 0.0
);

-- Criando a tabela Mecanicos
CREATE TABLE Mecanico (
    mecanico_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(12) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    especialidade ENUM('Mecânico', 'Mecânico de Manutenção', 'Mecânico Montador') DEFAULT 'Mecânico' NOT NULL,
    CONSTRAINT unique_phone_number_employee UNIQUE (telefone),
    CONSTRAINT unique_email_employee UNIQUE (Email)
);

-- Criando a tabela OrdemDeServico
CREATE TABLE OrdemDeServico (
    ordem_id INT AUTO_INCREMENT PRIMARY KEY,
    veiculo_id INT,
    numero INT,
    data_emissao DATE,
    valor DECIMAL(10, 2),
    status VARCHAR(50),
    data_conclusao DATE,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(veiculo_id)
);