INSERT INTO ClientePF VALUES
(1, 'Maria Oliveira', 'maria@gmail.com', '11999999999', '123.456.789-00'),
(2, 'João Souza', 'joao@gmail.com', '11988888888', '987.654.321-00');

INSERT INTO ClientePJ VALUES
(3, 'Tech Solutions LTDA', 'contato@tech.com.br', '1133333333', '12.345.678/0001-00');

INSERT INTO Endereco VALUES
(1, 1, 'Rua A', 'São Paulo', 'SP', '01000-000'),
(2, 2, 'Rua B', 'Rio de Janeiro', 'RJ', '20000-000');

INSERT INTO FormaPagamento VALUES
(1, 1, 'Pix', 'Chave: maria@pix.com'),
(2, 2, 'Cartão', 'Mastercard final 1234');

INSERT INTO Fornecedor VALUES
(1, 'Fornecedor A', 'contato@fornecedorA.com'),
(2, 'Fornecedor B', 'contato@fornecedorB.com');

INSERT INTO Categoria VALUES
(1, 'Eletrônicos'),
(2, 'Livros');

INSERT INTO Produto VALUES
(1, 'Notebook', 'Notebook Gamer', 4500.00, 1, 1),
(2, 'Livro SQL', 'Livro sobre banco de dados', 120.00, 2, 2);

INSERT INTO Estoque VALUES
(1, 1, 10),
(2, 2, 50);

INSERT INTO Pedido VALUES
(1, 1, 1, '2025-04-01 10:00:00', 'Enviado', 4620.00, 20.00, 10),
(2, 2, 2, '2025-04-03 12:00:00', 'Processando', 120.00, 0.00, 15);

INSERT INTO ProdutoPedido VALUES
(1, 1, 1),
(2, 2, 1);

INSERT INTO Entrega VALUES
(1, 1, 'BR1234567890', 'Em Transporte');

INSERT INTO Vendedor VALUES
(1, 'Carlos Vendedor', 'carlos@loja.com');

INSERT INTO ProdutoVendedor VALUES
(1, 1),
(1, 2);
