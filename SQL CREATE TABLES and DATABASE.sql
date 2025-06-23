CREATE DATABASE IF NOT EXISTS FALLSCAR;

CREATE TABLE IF NOT EXISTS Loja (
  id_loja INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cidade VARCHAR(100),
  aeroporto BOOLEAN
);

CREATE TABLE IF NOT EXISTS Carro (
  id_carro INT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(100),
  placa VARCHAR(20) UNIQUE,
  status VARCHAR(20),
  id_loja INT,
  FOREIGN KEY (id_loja) REFERENCES Loja(id_loja)
);

CREATE TABLE IF NOT EXISTS Cliente (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cpf VARCHAR(14) UNIQUE,
  telefone VARCHAR(20),
  email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Reserva (
  id_reserva INT PRIMARY KEY AUTO_INCREMENT,
  data_inicio DATE,
  data_fim DATE,
  canal VARCHAR(20),
  incluir_motorista BOOLEAN,
  pagamento_confirmado BOOLEAN,
  id_cliente INT,
  id_carro INT,
  id_loja_retirada INT,
  id_loja_devolucao INT,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_carro) REFERENCES Carro(id_carro),
  FOREIGN KEY (id_loja_retirada) REFERENCES Loja(id_loja),
  FOREIGN KEY (id_loja_devolucao) REFERENCES Loja(id_loja)
);

CREATE TABLE IF NOT EXISTS Motorista (
  id_motorista INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cpf VARCHAR(14) UNIQUE,
  telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS MotoristaReserva (
  id_motorista INT,
  id_reserva INT,
  PRIMARY KEY (id_motorista, id_reserva),
  FOREIGN KEY (id_motorista) REFERENCES Motorista(id_motorista),
  FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);
