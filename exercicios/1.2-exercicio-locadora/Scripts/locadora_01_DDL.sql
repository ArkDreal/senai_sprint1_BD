
CREATE DATABASE LOCADORA2;
GO

USE LOCADORA2;


CREATE TABLE EMPRESA(
 idEmpresa TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeEmpresa VARCHAR(20) NOT NULL
);


CREATE TABLE MARCA (
 idMarca TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeMarca VARCHAR(20) NOT NULL
);


CREATE TABLE CLIENTE(
 idCliente TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeCliente VARCHAR(20) NOT NULL,
 CPF NCHAR(12) 
 );


 CREATE TABLE MODELO(
 idModelo TINYINT PRIMARY KEY IDENTITY(1,1),
 idMarca TINYINT FOREIGN KEY REFERENCES MARCA(idMarca),
 nomeModelo VARCHAR(15) NOT NULL
);


 CREATE TABLE VEICULO(
 idVeiculo TINYINT PRIMARY KEY IDENTITY(1,1),
 idEmpresa TINYINT FOREIGN KEY REFERENCES EMPRESA(idEmpresa),
 idModelo TINYINT FOREIGN KEY REFERENCES MODELO(idModelo),
 placaVeiculo CHAR(8) NOT NULL
);

CREATE TABLE ALUGUEL(
 idAluguel TINYINT PRIMARY KEY IDENTITY(1,1),
 idCliente TINYINT FOREIGN KEY REFERENCES CLIENTE(idCliente),
 idVeiculo TINYINT FOREIGN KEY REFERENCES VEICULO (idVeiculo),
 dataInicio DATE,
 dataFim DATE
);

ALTER TABLE CLIENTE 
DROP COLUMN CPF

