# 📌 Projeto 2 – Sistema de controle e gerenciamento de ordens de serviço (OS) em oficina mecânica

## 🧾 Contexto

Este projeto foi desenvolvido com o objetivo de praticar a criação de esquemas conceituais a partir de uma narrativa realista.

O sistema simula o funcionamento de uma oficina mecânica que realiza consertos e revisões periódicas em veículos. A partir da chegada de um cliente, diversos dados e etapas são gerenciados e armazenados para controle eficiente da execução das ordens de serviço (OS).

---

## 🧠 Objetivos do esquema

- Representar de forma clara e completa o fluxo de uma OS;
- Capturar os relacionamentos entre veículos, clientes, mecânicos, serviços e peças;
- Garantir a rastreabilidade da execução dos serviços, cálculo de custos e acompanhamento do status da OS.

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

---

## 📄 Arquivos no diretório

- `modelo.dbml`: Arquivo com o script do modelo conceitual para ser visualizado no [dbdiagram.io](https://dbdiagram.io/)
- `README.md`: Este arquivo de descrição com o contexto e explicações do projeto

---

## 🚀 Próximos passos

- Expandir o modelo com dados de pagamento e controle de estoque.
- Implementar controle de versões e melhorias futuras no esquema.
- Criar scripts SQL a partir do modelo conceitual para futura implementação física.

---

## 📚 Aprendizados

Com este exercício, foi possível praticar:

- Criação de entidades e relacionamentos complexos
- Utilização de relacionamentos muitos-para-muitos
- Aplicação de boas práticas de modelagem conceitual com EER
- Organização de projetos de dados em repositórios do GitHub
