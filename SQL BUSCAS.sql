-- Todas as lojas
SELECT * FROM Loja;

-- Todos os carros
SELECT * FROM Carro;

-- Todas as reservas
SELECT * FROM Reserva;

-- Um cliente por CPF
SELECT * FROM Cliente WHERE cpf = '123.456.789-00';

-- Uma reserva por ID
SELECT * FROM Reserva WHERE id_reserva = 1;

-- Um carro por placa
SELECT * FROM Carro WHERE placa = 'ABC1234';

-- Carros disponíveis em um dia
SELECT * FROM Carro
WHERE status = 'livre'
AND id_carro NOT IN (
  SELECT id_carro FROM Reserva
  WHERE '2025-07-01' BETWEEN data_inicio AND data_fim
);

-- Carros reservados em um dia
SELECT * FROM Carro
WHERE id_carro IN (
  SELECT id_carro FROM Reserva
  WHERE '2025-07-01' BETWEEN data_inicio AND data_fim
);
