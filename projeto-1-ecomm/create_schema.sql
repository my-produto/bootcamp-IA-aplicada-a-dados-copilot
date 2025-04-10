CREATE TABLE ClientePF (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  telefone VARCHAR(20),
  cpf VARCHAR(14) UNIQUE
);

CREATE TABLE ClientePJ (
  id_cliente INT PRIMARY KEY,
  razao_social VARCHAR(255),
  email VARCHAR(255),
  telefone VARCHAR(20),
  cnpj VARCHAR(18) UNIQUE
);

CREATE TABLE Endereco (
  id_endereco INT PRIMARY KEY,
  id_cliente INT,
  logradouro VARCHAR(255),
  cidade VARCHAR(100),
  estado CHAR(2),
  cep VARCHAR(10),
  FOREIGN KEY (id_cliente) REFERENCES ClientePF(id_cliente)
    ON DELETE CASCADE
);

CREATE TABLE FormaPagamento (
  id_pagamento INT PRIMARY KEY,
  id_cliente INT,
  tipo ENUM('Cartão', 'Boleto', 'Pix'),
  detalhes VARCHAR(255),
  FOREIGN KEY (id_cliente) REFERENCES ClientePF(id_cliente)
    ON DELETE CASCADE
);

CREATE TABLE Fornecedor (
  id_fornecedor INT PRIMARY KEY,
  nome VARCHAR(255),
  contato VARCHAR(255)
);

CREATE TABLE Categoria (
  id_categoria INT PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE Produto (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(255),
  descricao TEXT,
  preco DECIMAL(10,2),
  id_fornecedor INT,
  id_categoria INT,
  FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor),
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Estoque (
  id_estoque INT PRIMARY KEY,
  id_produto INT,
  quantidade INT,
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Pedido (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  id_endereco INT,
  data_compra DATETIME,
  status ENUM('Processando', 'Enviado', 'Entregue', 'Cancelado'),
  valor_total DECIMAL(10,2),
  frete DECIMAL(10,2),
  prazo_devolucao INT,
  FOREIGN KEY (id_cliente) REFERENCES ClientePF(id_cliente),
  FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);

CREATE TABLE ProdutoPedido (
  id_pedido INT,
  id_produto INT,
  quantidade INT,
  PRIMARY KEY (id_pedido, id_produto),
  FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Entrega (
  id_entrega INT PRIMARY KEY,
  id_pedido INT,
  codigo_rastreio VARCHAR(50),
  status ENUM('Aguardando Envio', 'Enviado', 'Em Transporte', 'Entregue', 'Extraviado'),
  FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE Vendedor (
  id_vendedor INT PRIMARY KEY,
  nome VARCHAR(255),
  contato VARCHAR(255)
);

CREATE TABLE ProdutoVendedor (
  id_vendedor INT,
  id_produto INT,
  PRIMARY KEY (id_vendedor, id_produto),
  FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_vendedor),
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
