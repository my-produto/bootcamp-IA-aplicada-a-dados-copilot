Table Cliente {
  id_cliente int [primary key]
  tipo enum("PF", "PJ")
  cpf_cnpj varchar(18) [unique]
}

Table Endereco {
  id_endereco int [primary key]
  id_cliente int [ref: > Cliente.id_cliente]
  logradouro varchar(255)
  cidade varchar(100)
  estado char(2)
  cep varchar(10)
}

Table FormaPagamento {
  id_pagamento int [primary key]
  id_cliente int [ref: > Cliente.id_cliente]
  tipo enum("Cartão", "Boleto", "Pix")
  detalhes varchar(255)
}

Table Pedido {
  id_pedido int [primary key]
  id_cliente int [ref: > Cliente.id_cliente]
  id_endereco int [ref: > Endereco.id_endereco]
  data_compra datetime
  status enum("Processando", "Enviado", "Entregue", "Cancelado")
  valor_total decimal(10,2)
  frete decimal(10,2)
  prazo_devolucao int
}

Table Produto {
  id_produto int [primary key]
  nome varchar(255)
  descricao text
  preco decimal(10,2)
  id_fornecedor int [ref: > Fornecedor.id_fornecedor]
  id_categoria int [ref: > Categoria.id_categoria]
}

Table Categoria {
  id_categoria int [primary key]
  nome varchar(100)
}

Table Fornecedor {
  id_fornecedor int [primary key]
  nome varchar(255)
  contato varchar(255)
}

Table Estoque {
  id_estoque int [primary key]
  id_produto int [ref: > Produto.id_produto]
  quantidade int
}

Table ProdutoPedido {
  id_pedido int [ref: > Pedido.id_pedido]
  id_produto int [ref: > Produto.id_produto]
  quantidade int
}

Table Entrega {
  id_entrega int [primary key]
  id_pedido int [ref: > Pedido.id_pedido]
  codigo_rastreio varchar(50)
  status enum("Aguardando Envio", "Enviado", "Em Transporte", "Entregue", "Extraviado")
}

Table Vendedor {
  id_vendedor int [primary key]
  nome varchar(255)
  contato varchar(255)
}

Table ProdutoVendedor {
  id_vendedor int [ref: > Vendedor.id_vendedor]
  id_produto int [ref: > Produto.id_produto]
}
