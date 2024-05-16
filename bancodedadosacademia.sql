CREATE DATABASE BancoDeDadosAcademia;
CREATE DATABASE IF NOT EXISTS BancoDeDadosAcademia;
USE BancoDeDadosAcademia;

CREATE TABLE IF NOT EXISTS Clientes (
	ClienteID int AUTO_INCREMENT PRIMARY KEY,
	Nome varchar(150) NOT NULL,
	DataNascimento date,
	Sexo char(1),
	CPF VARCHAR(14) UNIQUE,
    Email VARCHAR(150) UNIQUE,
    Telefone VARCHAR(20),
    Modalidade varchar(50),
    TipoPagamento varchar(50),
    DataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);	

CREATE TABLE IF NOT EXISTS Cadastro (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    DataNascimento DATE,
    Sexo CHAR(1),
    CPF VARCHAR(14) UNIQUE,
    Email VARCHAR(150) UNIQUE,
    Telefone VARCHAR(20),
    Modalidade VARCHAR(50),
    TipoPagamento VARCHAR(50),
    DataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    Username VARCHAR(50) UNIQUE,
    Senha VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Logins (
    LoginID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    Username VARCHAR(50) UNIQUE,
    Senha VARCHAR(100),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE IF NOT EXISTS Agendamento (
    AgendamentoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataAgendamento DATE,
    Modalidade VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);