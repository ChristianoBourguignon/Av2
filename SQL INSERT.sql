-- Loja
INSERT INTO Loja (nome, cidade, aeroporto) VALUES ('Loja Aeroporto RJ', 'Rio de Janeiro', TRUE);

-- Carro
INSERT INTO Carro (modelo, placa, status, id_loja) VALUES ('Fiat Argo', 'ABC1234', 'livre', 1);

-- Cliente
INSERT INTO Cliente (nome, cpf, telefone, email) VALUES ('João Silva', '123.456.789-00', '21999999999', 'joao@email.com');

-- Reserva
INSERT INTO Reserva (data_inicio, data_fim, canal, incluir_motorista, pagamento_confirmado, id_cliente, id_carro, id_loja_retirada, id_loja_devolucao)
VALUES ('2025-07-01', '2025-07-08', 'internet', FALSE, TRUE, 1, 1, 1, 1);

-- Motorista
INSERT INTO Motorista (nome, cpf, telefone) VALUES ('Carlos Motorista', '987.654.321-00', '21988888888');

-- MotoristaReserva
INSERT INTO MotoristaReserva (id_motorista, id_reserva) VALUES (1, 1);
