CREATE DATABASE IF NOT EXISTS BancoDeDadosAcademia;
USE BancoDeDadosAcademia;

CREATE TABLE IF NOT EXISTS Cadastro (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    DataNascimento DATE,
    Sexo ENUM('Masculino', 'Feminino', 'Outro'),
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
    FOREIGN KEY (ClienteID) REFERENCES Cadastro(ClienteID),
    Username VARCHAR(50) UNIQUE,
    Senha VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Agendamento (
    AgendamentoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataAgendamento DATE,
    Modalidade VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Cadastro(ClienteID)
);
