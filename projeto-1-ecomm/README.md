# 📦 Modelagem de dados para e-commerce

## Sobre o projeto
Esta pasta contém o desenvolvimento completo de um projeto de banco de dados para um sistema de e-commerce. O projeto passa pelas etapas de modelagem conceitual (EER), modelagem lógica e implementação SQL, com inserção de dados para testes e execução de queries.

---

## Sumário

- [Modelagem conceitual](#modelagem-conceitual)
- [Estrutura do banco de dados](#estrutura-do-banco-de-dados)
- [Projeto conceitual (EER)](#projeto-conceitual-eer)
- [Projeto lógico (UML/Relacional)](#projeto-lógico-umlrelacional)
- [Script de criação do banco de dados (MySQL)](#script-de-criação-do-banco-de-dados-mysql)
- [Dados de teste](#dados-de-teste)
- [Consultas SQL](#consultas-sql)

---


## Modelagem conceitual

A modelagem deste projeto foi baseada no seguinte cenário:

- O e-commerce opera como um **marketplace**, onde diferentes vendedores podem oferecer seus produtos através de uma única plataforma.
- Clientes podem se cadastrar como **Pessoa Física (PF) ou Pessoa Jurídica (PJ)**.
- O **endereço do cliente** influencia no cálculo do frete, e cada pedido armazena essa informação.
- Cada **pedido** pode conter múltiplos produtos, e a quantidade de cada item é registrada.
- Há um sistema de **pagamento flexível**, permitindo que clientes cadastrem mais de uma forma de pagamento.
- O **status da entrega** é armazenado separadamente para melhor rastreabilidade.
- Produtos são associados a fornecedores e vendedores, garantindo controle de estoque e disponibilidade.

---

## Estrutura do banco de dados

### Principais entidades:
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

## Projeto conceitual (EER)

O diagrama foi criado utilizando **dbdiagram.io**.  
[📌 Clique aqui para visualizar o modelo no dbdiagram.io](https://dbdiagram.io/d/Projeto-modelo-ecomm-67f033de4f7afba184684726)

---

## Projeto lógico (UML/Relacional)

O modelo lógico foi mapeado e refinado a partir do EER com uso da notação UML relacional, respeitando chaves primárias e estrangeiras, e aplicando as regras de negócio previstas no cenário. O modelo foi implementado no [DB Fiddle]([https://www.db-fiddle.com/](https://sqlfiddle.com/mysql/online-compiler?id=7224e420-016e-4298-bd86-618d899cdd54)), usando o SGBD **MySQL 8.0**.

[📌 Clique aqui para visualizar o schema no dbdiagram.io](https://dbdiagram.io/d/modelo-logico-projeto-ecomm-67f6da744f7afba1840186f5)


---

## Script de criação do banco de dados (MySQL)

> O script SQL está disponível no arquivo `schema.sql`. Inclui criação de tabelas com constraints adequadas, incluindo especialização via herança.

- [x] Tabelas com PKs e FKs
- [x] Tipos ENUM para status e formas de pagamento
- [x] Constraints de unicidade e integridade referencial

---

## Dados de teste

> Inserções feitas no próprio DB Fiddle para validar os relacionamentos e testar as queries.

Incluem dados fictícios para clientes, produtos, fornecedores, pedidos, entregas e pagamentos. Os dados foram inseridos respeitando todas as FKs do modelo.

---

## Consultas SQL

As queries foram desenvolvidas com base em perguntas reais de negócio, utilizando:

- `SELECT`, `WHERE`, `ORDER BY`, `HAVING`
- Atributos derivados com expressões
- Junções entre múltiplas tabelas (`JOIN`)
- Subqueries

### Exemplos de perguntas respondidas:

- Quantos pedidos foram feitos por cada cliente?
- Algum vendedor também é fornecedor?
- Relação de produtos, fornecedores e estoque?
- Nome dos fornecedores e os produtos fornecidos?

> As queries estão disponíveis no arquivo `queries.sql`, mas também foram testadas diretamente na plataforma.

---

📬 **Dúvidas ou sugestões?** Fique à vontade para abrir uma issue ou me chamar por aqui!

---

## 🏆 Autora
📌 **Myllena Fernandes**  
🚀 **linkedin.com/fernandesmyllena**  
