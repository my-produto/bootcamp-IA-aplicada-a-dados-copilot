-- Clientes
INSERT INTO Cliente (nome, cpf_cnpj, tipo_cliente) VALUES
('João Silva', '123.456.789-00', 'PF'),
('Oficina Express Ltda.', '12.345.678/0001-99', 'PJ');

-- Veículos
INSERT INTO Veiculo (placa, marca, modelo, ano, id_cliente) VALUES
('ABC1234', 'Fiat', 'Uno', 2015, 1),
('XYZ9876', 'Volkswagen', 'Gol', 2018, 2);

-- Equipes
INSERT INTO Equipe (nome) VALUES
('Equipe A'),
('Equipe B');

-- Mecânicos
INSERT INTO Mecanico (nome, endereco, especialidade, id_equipe) VALUES
('Carlos Mecânico', 'Rua A, 123', 'Motor', 1),
('Ana Técnica', 'Rua B, 456', 'Freios', 1),
('Pedro Souza', 'Rua C, 789', 'Suspensão', 2);

-- Serviços
INSERT INTO Servico (descricao, preco_base) VALUES
('Troca de óleo', 100.00),
('Revisão completa', 500.00),
('Troca de pastilhas de freio', 200.00);

-- Peças
INSERT INTO Peca (descricao, valor_unitario) VALUES
('Filtro de óleo', 30.00),
('Pastilha de freio', 120.00),
('Óleo sintético', 50.00);

-- Ordens de Serviço
INSERT INTO OrdemServico (numero_os, data_emissao, data_conclusao, valor_total, status, id_veiculo, id_equipe, autorizada) VALUES
('OS001', '2025-04-01', '2025-04-05', 700.00, 'Concluída', 1, 1, true),
('OS002', '2025-04-03', NULL, 0.00, 'Aberta', 2, 2, false);

-- OS_Servico
INSERT INTO OS_Servico (id_os, id_servico, quantidade, valor_total) VALUES
(1, 1, 1, 100.00),
(1, 2, 1, 500.00),
(2, 3, 1, 200.00);

-- OS_Peca
INSERT INTO OS_Peca (id_os, id_peca, quantidade, valor_total) VALUES
(1, 1, 1, 30.00),
(1, 3, 2, 100.00),
(2, 2, 1, 120.00);
