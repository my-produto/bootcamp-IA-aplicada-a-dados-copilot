# 📦 Modelagem de Dados para E-Commerce - Bootcamp de Modelagem de Dados

## 📌 Sobre o Projeto
Este projeto faz parte do **Bootcamp de Modelagem de Dados com EER (Enhanced Entity-Relationship)** e tem como objetivo aplicar os conceitos de modelagem de dados no contexto de um **e-commerce marketplace**, considerando aspectos como clientes, pedidos, pagamentos, fornecedores e estoque.

A modelagem foi desenvolvida utilizando **dbdiagram.io** e reflete um esquema EER refinado, seguindo boas práticas para um banco de dados relacional.

---

## 🏗️ Modelagem Conceitual

A modelagem deste projeto foi baseada no seguinte cenário:

- O e-commerce opera como um **marketplace**, onde diferentes vendedores podem oferecer seus produtos através de uma única plataforma.
- Clientes podem se cadastrar como **Pessoa Física (PF) ou Pessoa Jurídica (PJ)**.
- O **endereço do cliente** influencia no cálculo do frete, e cada pedido armazena essa informação.
- Cada **pedido** pode conter múltiplos produtos, e a quantidade de cada item é registrada.
- Há um sistema de **pagamento flexível**, permitindo que clientes cadastrem mais de uma forma de pagamento.
- O **status da entrega** é armazenado separadamente para melhor rastreabilidade.
- Produtos são associados a fornecedores e vendedores, garantindo controle de estoque e disponibilidade.

---

## 📊 Estrutura do Banco de Dados

### 📌 Principais Entidades:
- **Cliente**: Armazena os dados dos clientes (CPF/CNPJ, tipo de conta).
- **Endereço**: Relacionado ao cliente, define o local para cálculo do frete.
- **Pedido**: Representa a compra, com status de entrega, data e valor total.
- **Produto**: Contém informações sobre os produtos vendidos na plataforma.
- **Categoria**: Classifica os produtos dentro da loja.
- **Fornecedor**: Define quem fornece os produtos vendidos no marketplace.
- **Estoque**: Controla a disponibilidade de cada produto.
- **ProdutoPedido**: Tabela intermediária que armazena os produtos dentro de cada pedido.
- **Entrega**: Responsável por armazenar status e código de rastreamento da entrega.
- **Vendedor**: Responsável pela oferta de produtos na plataforma.
- **Forma de Pagamento**: Permite o cadastro de múltiplas formas de pagamento por cliente.

---

## 🔗 Modelo EER

O diagrama foi criado utilizando **dbdiagram.io**.  
[📌 Clique aqui para visualizar o modelo no dbdiagram.io](<iframe width="560" height="315" src='https://dbdiagram.io/e/67f033de4f7afba184684726/67f033ed4f7afba18468484e'> </iframe>) _(Substitua "#" pelo link gerado na plataforma)_.

---

## 🎯 Conclusão
Este projeto representa um exercício prático de **modelagem EER aplicada a um e-commerce marketplace**. Ele permite entender como estruturar um banco de dados relacional para sistemas complexos e reforça boas práticas na organização de entidades e relacionamentos.

---

## 🏆 Autora
📌 **Myllena Fernandes**  
🚀 **linkedin.com/fernandesmyllena**  
