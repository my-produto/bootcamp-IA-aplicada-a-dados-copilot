-- Criação da tabela Cliente
CREATE TABLE Cliente (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  cpf_cnpj VARCHAR(20) NOT NULL UNIQUE,
  tipo_cliente ENUM('PF', 'PJ') NOT NULL
);

-- Criação da tabela Veiculo
CREATE TABLE Veiculo (
  id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
  placa VARCHAR(10) NOT NULL UNIQUE,
  marca VARCHAR(100),
  modelo VARCHAR(100),
  ano INT,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Criação da tabela Equipe
CREATE TABLE Equipe (
  id_equipe INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

-- Criação da tabela Mecanico
CREATE TABLE Mecanico (
  id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  endereco VARCHAR(255),
  especialidade VARCHAR(100),
  id_equipe INT,
  FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

-- Criação da tabela OrdemServico
CREATE TABLE OrdemServico (
  id_os INT PRIMARY KEY AUTO_INCREMENT,
  numero_os VARCHAR(20) NOT NULL UNIQUE,
  data_emissao DATE NOT NULL,
  data_conclusao DATE,
  valor_total DECIMAL(10,2),
  status ENUM('Aberta', 'Em execução', 'Concluída', 'Cancelada') NOT NULL,
  id_veiculo INT,
  id_equipe INT,
  autorizada BOOLEAN,
  FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
  FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

-- Criação da tabela Servico
CREATE TABLE Servico (
  id_servico INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR(255) NOT NULL,
  preco_base DECIMAL(10,2) NOT NULL
);

-- Tabela de associação OS_Servico
CREATE TABLE OS_Servico (
  id_os INT,
  id_servico INT,
  quantidade INT DEFAULT 1,
  valor_total DECIMAL(10,2),
  PRIMARY KEY (id_os, id_servico),
  FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
  FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

-- Criação da tabela Peca
CREATE TABLE Peca (
  id_peca INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR(255) NOT NULL,
  valor_unitario DECIMAL(10,2) NOT NULL
);

-- Tabela de associação OS_Peca
CREATE TABLE OS_Peca (
  id_os INT,
  id_peca INT,
  quantidade INT DEFAULT 1,
  valor_total DECIMAL(10,2),
  PRIMARY KEY (id_os, id_peca),
  FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
  FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);

-- Criação da tabela FormaPagamento
CREATE TABLE FormaPagamento (
  id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  forma ENUM('Cartão', 'Dinheiro', 'Pix', 'Boleto') NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Criação da tabela Entrega
CREATE TABLE Entrega (
  id_entrega INT PRIMARY KEY AUTO_INCREMENT,
  id_os INT,
  status VARCHAR(100),
  codigo_rastreio VARCHAR(100),
  FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os)
);
