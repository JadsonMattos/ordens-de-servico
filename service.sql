CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    Nome VARCHAR(45),
    Telefone VARCHAR(45),
    Endereco VARCHAR(45)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY,
    Placa VARCHAR(45),
    Modelo VARCHAR(45),
    Ano INT,
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45)
);

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY,
    Nome_da_Equipe VARCHAR(45)
);

CREATE TABLE Equipe_has_Mecanico (
    Equipe_idEquipe INT,
    Mecanico_idMecanico INT,
    PRIMARY KEY (Equipe_idEquipe, Mecanico_idMecanico),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (Mecanico_idMecanico) REFERENCES Mecanico(idMecanico)
);

CREATE TABLE OS (
    idOS INT PRIMARY KEY,
    Data_de_Emissao DATE,
    Valor VARCHAR(45),
    Status VARCHAR(45),
    Data_de_Conclusao DATE,
    Veiculo_idVeiculo INT,
    Equipe_idEquipe INT,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE Servico (
    idServico INT PRIMARY KEY,
    Descricao VARCHAR(45),
    Valor VARCHAR(45)
);

CREATE TABLE OS_has_Servico (
    OS_idOS INT,
    Servico_idServico INT,
    quantidade INT,
    PRIMARY KEY (OS_idOS, Servico_idServico),
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
    FOREIGN KEY (Servico_idServico) REFERENCES Servico(idServico)
);

CREATE TABLE Peca (
    idPeca INT PRIMARY KEY,
    Descricao VARCHAR(45),
    Valor VARCHAR(45)
);

CREATE TABLE OS_has_Peca (
    OS_idOS INT,
    Peca_idPeca INT,
    quantidade INT,
    PRIMARY KEY (OS_idOS, Peca_idPeca),
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
    FOREIGN KEY (Peca_idPeca) REFERENCES Peca(idPeca)
);

INSERT INTO Cliente (idCliente, Nome, Telefone, Endereco) VALUES
(1, 'João Silva', '(11) 98765-4321', 'Rua A, 123'),
(2, 'Maria Souza', '(21) 91234-5678', 'Av. B, 456');

INSERT INTO Veiculo (idVeiculo, Placa, Modelo, Ano, Cliente_idCliente) VALUES
(1, 'ABC-1234', 'Gol', 2015, 1),
(2, 'XYZ-5678', 'Civic', 2020, 2);

INSERT INTO Mecanico (idMecanico, Nome, Endereco, Especialidade) VALUES
(1, 'Carlos Lima', 'Rua C, 789', 'Motor'),
(2, 'Ana Oliveira', 'Av. D, 321', 'Suspensão');

INSERT INTO Equipe (idEquipe, Nome_da_Equipe) VALUES
(1, 'Equipe Alfa'),
(2, 'Equipe Beta');

INSERT INTO Equipe_has_Mecanico (Equipe_idEquipe, Mecanico_idMecanico) VALUES
(1, 1),
(2, 2);

INSERT INTO OS (idOS, Data_de_Emissao, Valor, Status, Data_de_Conclusao, Veiculo_idVeiculo, Equipe_idEquipe) VALUES
(1, '2024-06-10', '1500.00', 'Concluída', '2024-06-15', 1, 1),
(2, '2024-06-12', '2000.00', 'Em Andamento', NULL, 2, 2);

INSERT INTO Servico (idServico, Descricao, Valor) VALUES
(1, 'Troca de óleo', '200.00'),
(2, 'Revisão geral', '800.00');

INSERT INTO OS_has_Servico (OS_idOS, Servico_idServico, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 2, 1);

INSERT INTO Peca (idPeca, Descricao, Valor) VALUES
(1, 'Filtro de óleo', '50.00'),
(2, 'Pastilha de freio', '300.00');

INSERT INTO OS_has_Peca (OS_idOS, Peca_idPeca, quantidade) VALUES
(1, 1, 2),
(1, 2, 4),
(2, 2, 2);

