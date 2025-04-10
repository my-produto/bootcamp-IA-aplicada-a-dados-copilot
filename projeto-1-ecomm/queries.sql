-- ##################################################
-- ## 1. Quantos pedidos foram feitos por cliente? ##
-- ##################################################

SELECT 
  id_cliente, 
  COUNT(*) AS total_pedidos
FROM Pedido
GROUP BY id_cliente;

-- #####################################################
-- ## 2. Relação de nomes dos fornecedores e produtos ##
-- #####################################################

SELECT 
  Fornecedor.nome AS nome_fornecedor,
  Produto.nome AS nome_produto
FROM Produto
JOIN Fornecedor ON Produto.id_fornecedor = Fornecedor.id_fornecedor;

-- ######################################################################
-- ## 3. Clientes que compraram mais de R$ 500 em valor total de pedido ##
-- ######################################################################

SELECT 
  id_cliente, 
  SUM(valor_total) AS total_gasto
FROM Pedido
GROUP BY id_cliente
HAVING total_gasto > 500;

-- ########################################################
-- ## 4. Relação entre produtos, fornecedores e estoques ##
-- ########################################################

SELECT 
  Produto.nome AS produto,
  Fornecedor.nome AS fornecedor,
  Estoque.quantidade AS estoque
FROM Produto
JOIN Fornecedor ON Produto.id_fornecedor = Fornecedor.id_fornecedor
JOIN Estoque ON Produto.id_produto = Estoque.id_produto;

-- #################################################
-- ## 5. Lista de pedidos com frete acima de 20.0 ##
-- #################################################

SELECT 
  id_pedido,
  valor_total,
  frete
FROM Pedido
WHERE frete > 20.0;

-- ##########################################################
-- ## 6. Lista de produtos e preço com valor derivado (10%)##
-- ##########################################################

SELECT 
  nome,
  preco,
  preco * 1.10 AS preco_com_10_porcento
FROM Produto;

-- ################################################################
-- ## 7. Total de pedidos e valor médio por status (com HAVING) ##
-- ################################################################

SELECT 
  status,
  COUNT(*) AS total_pedidos,
  AVG(valor_total) AS media_valor
FROM Pedido
GROUP BY status
HAVING AVG(valor_total) > 100;

-- #############################################################
-- ## 8. Produtos vendidos por vendedor (JOIN com associativa)##
-- #############################################################

SELECT 
  Vendedor.nome AS vendedor,
  Produto.nome AS produto
FROM ProdutoVendedor
JOIN Vendedor ON ProdutoVendedor.id_vendedor = Vendedor.id_vendedor
JOIN Produto ON ProdutoVendedor.id_produto = Produto.id_produto;

-- #################################################################
-- ## 9. Entregas em andamento com código de rastreio visível ##
-- #################################################################

SELECT 
  Pedido.id_pedido,
  Entrega.codigo_rastreio,
  Entrega.status
FROM Entrega
JOIN Pedido ON Entrega.id_pedido = Pedido.id_pedido
WHERE Entrega.status NOT IN ('Entregue', 'Extraviado');

-- ####################################################################
-- ## 10. Total gasto por cliente (nome, tipo) + subquery para soma ##
-- ####################################################################

SELECT 
  C.id_cliente,
  COALESCE(PF.nome, PJ.nome) AS nome_cliente,
  C.tipo,
  (
    SELECT SUM(valor_total)
    FROM Pedido P
    WHERE P.id_cliente = C.id_cliente
  ) AS total_gasto
FROM Cliente C
LEFT JOIN ClientePF PF ON C.id_cliente = PF.id_cliente
LEFT JOIN ClientePJ PJ ON C.id_cliente = PJ.id_cliente;

-- #######################################################################
-- ## 11. Pedidos com prazo de devolução > 10 dias, agrupados por tipo ##
-- #######################################################################

SELECT 
  C.tipo,
  COUNT(*) AS pedidos_acima_do_prazo
FROM Pedido P
JOIN Cliente C ON P.id_cliente = C.id_cliente
WHERE P.prazo_devolucao > 10
GROUP BY C.tipo;

-- ######################################################
-- ## 12. Produtos com estoque < 20 (join + subquery) ##
-- ######################################################

SELECT 
  PR.nome,
  PR.preco,
  E.quantidade
FROM Produto PR
JOIN Estoque E ON PR.id_produto = E.id_produto
WHERE E.quantidade < 20;

-- #######################################################################
-- ## 13. Nome do fornecedor, nome do produto e quantidade em estoque  ##
-- #######################################################################

SELECT 
  F.nome AS fornecedor,
  P.nome AS produto,
  E.quantidade
FROM Produto P
JOIN Fornecedor F ON P.id_fornecedor = F.id_fornecedor
JOIN Estoque E ON P.id_produto = E.id_produto;

-- #######################################################################
-- ## 14. Vendedores que vendem produtos de fornecedores específicos   ##
-- #######################################################################

SELECT DISTINCT 
  V.nome AS nome_vendedor,
  F.nome AS nome_fornecedor
FROM ProdutoVendedor PV
JOIN Produto P ON PV.id_produto = P.id_produto
JOIN Vendedor V ON PV.id_vendedor = V.id_vendedor
JOIN Fornecedor F ON P.id_fornecedor = F.id_fornecedor
WHERE F.nome = 'Fornecedor Exemplo A';

-- #######################################################################
-- ## 15. Pedidos com status e info extra com CASE (texto amigável)   ##
-- #######################################################################

SELECT 
  id_pedido,
  status,
  CASE 
    WHEN status = 'Cancelado' THEN 'Pedido cancelado pelo cliente ou sistema'
    WHEN status = 'Enviado' THEN 'Pedido já saiu para entrega'
    WHEN status = 'Entregue' THEN 'Pedido entregue com sucesso'
    ELSE 'Pedido em processamento'
  END AS descricao_status
FROM Pedido;
