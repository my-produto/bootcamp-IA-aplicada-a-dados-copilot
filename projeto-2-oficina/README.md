# 📌 Projeto 2 – Sistema de controle e gerenciamento de ordens de serviço (OS) em oficina mecânica

## 🧾 Contexto

Este projeto foi desenvolvido com o objetivo de praticar a criação de esquemas conceituais a partir de uma narrativa realista.

O sistema simula o funcionamento de uma oficina mecânica que realiza consertos e revisões periódicas em veículos. A partir da chegada de um cliente, diversos dados e etapas são gerenciados e armazenados para controle eficiente da execução das ordens de serviço (OS).

---

## 🧠 Objetivos do esquema

- Representar de forma clara e completa o fluxo de uma OS;
- Capturar os relacionamentos entre veículos, clientes, mecânicos, serviços e peças;
- Garantir a rastreabilidade da execução dos serviços, cálculo de custos e acompanhamento do status da OS;
- Realizar consultas SQL complexas que demonstrem domínio do modelo.

---

## 🧩 Entidades e relacionamentos

- **Cliente**: Pode registrar um ou mais veículos.
- **Veículo**: Associado a um único cliente.
- **Equipe de mecânicos**: Responsável por avaliar, identificar e executar os serviços.
- **Mecânico**: Possui código, nome, endereço e especialidade. Cada equipe pode ter vários mecânicos.
- **Ordem de serviço (OS)**: Criada para cada veículo, registra os serviços a serem feitos, peças utilizadas, valor total, status e datas.
- **Serviço**: Cada OS pode conter vários serviços. Valores são definidos com base em uma tabela de referência de mão-de-obra.
- **Peça**: Várias peças podem estar associadas a uma OS.
- **Tabela de mão de obra**: Usada como referência para precificação dos serviços.
- **Pagamento**: Clientes podem cadastrar mais de uma forma de pagamento.
- **Entrega**: Cada OS possui um status e um código de rastreio.

---

## 🔧 Projeto lógico

O modelo conceitual foi traduzido para um **esquema lógico relacional**, e implementado em SQL com base nos seguintes princípios:

- **Chaves primárias** e **estrangeiras** definidas com clareza;
- **Relacionamentos N:N** transformados em tabelas associativas (`OS_Servico`, `OS_Peca`);
- Uso de tipos de dados apropriados, como `ENUM`, `DATE`, `BOOLEAN`, `DECIMAL`;
- Normalização adequada para evitar redundâncias e permitir escalabilidade.

---

## 🧪 Testes e consultas

Foram criadas queries SQL com foco nas cláusulas e instruções:

- `SELECT`, `WHERE`, `ORDER BY`, `HAVING`, expressões com alias (`AS`);
- Cálculo de valores derivados;
- Junções (`JOIN`) entre tabelas para análises mais completas.

---

## 📂 Estrutura de arquivos no diretório

| Arquivo                     | Descrição                                                                 |
|----------------------------|---------------------------------------------------------------------------|
| `projeto conceitual oficina.dbml`              | Script do modelo conceitual no formato dbdiagram.io                       |
| `modelo lógico projeto oficina.png`           | Imagem do modelo conceitual (versão visual)                    |
| `projeto logico oficina.dbml`              | Script do modelo lógico no formato dbdiagram.io                       |
| `modelo lógico projeto oficina.png`           | Imagem do modelo UML (versão visual do projeto lógico)                    |
| `create.sql`               | Script com a criação do banco e tabelas                                   |
| `inserts.sql`              | Script com os dados de teste inseridos nas tabelas                        |
| `queries.sql`              | Script com consultas SQL complexas realizadas a partir dos dados inseridos|
| `README.md`                | Este arquivo de descrição com contexto, estrutura e aprendizados          |

---

## ✅ Etapas concluídas

- [x] Criação do modelo conceitual com EER
- [x] Conversão para modelo lógico relacional
- [x] Implementação física com SQL
- [x] Inserção de dados para teste
- [x] Execução de consultas SQL com múltiplas cláusulas
- [x] Organização completa em repositório GitHub

---

## 💡 Próximos passos

- Expandir o modelo com controle de estoque de peças e agendamentos;
- Adicionar versionamento ao repositório com histórico de melhorias;
- Automatizar a geração de relatórios por OS ou cliente.

---

## 📚 Aprendizados

Com este exercício, foi possível praticar:

- Criação de entidades e relacionamentos complexos no modelo conceitual;
- Transformação de modelo EER em modelo lógico com estrutura relacional;
- Elaboração de consultas SQL com múltiplas cláusulas e relacionamentos;
- Organização de projetos de dados com boas práticas no GitHub.

---
