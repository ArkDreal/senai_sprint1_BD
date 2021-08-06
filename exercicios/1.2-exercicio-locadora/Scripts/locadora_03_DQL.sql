USE LOCADORA2;
GO

SELECT * FROM EMPRESA

SELECT * FROM MARCA

SELECT * FROM CLIENTE

SELECT * FROM MODELO

SELECT * FROM VEICULO

SELECT * FROM ALUGUEL

--MODELO
--MODELOS COM AS SUAS MARCAS
SELECT idModelo, nomeModelo, nomeMarca FROM MODELO
LEFT JOIN MARCA
ON MODELO.idMarca = MARCA.idMarca;

--VEICULO
--VEICULOS COM SUAS EMRESAS E MODELOS
SELECT idVeiculo, nomeEmpresa, nomeModelo 
FROM VEICULO
INNER JOIN EMPRESA
ON VEICULO.idEmpresa = EMPRESA.idEmpresa
INNER JOIN MODELO 
ON VEICULO.idModelo = MODELO.idModelo;

SELECT idAluguel, dataInicio, dataFim
FROM ALUGUEL 
FULL OUTER JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
FULL OUTER JOIN VEICULO
ON ALUGUEL.idVeiculo = VEICULO.idVeiculo;