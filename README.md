# 🛒 Sistema de Ponto de Venda (PDV)

![Delphi](https://img.shields.io/badge/DELPHI-VCL-E02323?style=flat-square&labelColor=333333) ![Object Pascal](https://img.shields.io/badge/OBJECT%20PASCAL-CODE-007ACC?style=flat-square&labelColor=333333) ![SQL Server](https://img.shields.io/badge/SQL%20SERVER-T--SQL-CC292B?style=flat-square&labelColor=333333)

## 📌 Sobre o Projeto

O **Sistema de Ponto de Venda (PDV)** é uma aplicação desktop desenvolvida com foco em otimizar o processo de vendas e o controle de estoque do varejo. O objetivo principal do sistema é fornecer uma interface fluida, analítica e robusta para operações de caixa e gerenciamento diário de inventário.

Através de uma interface construída nativamente em Delphi VCL e integração com um banco de dados relacional (SQL Server), o projeto permite a busca rápida de produtos, o processamento de pagamentos sem falhas e o registro seguro das transações, facilitando o fluxo de trabalho do operador de caixa.

## 🚀 Funcionalidades

* **Controle de Estoque em Tempo Real:** Gerenciamento integrado e atualização dinâmica do estoque dos itens após o fechamento de cada venda.
* **Busca de Produtos Otimizada:** Tela de busca nativa com parametrização de fotos (pasta `img`), garantindo uma identificação visual rápida dos produtos.
* **Processamento de Pagamentos:** Lógica dedicada e validada para finalizar as vendas de forma segura (`uPagamento`).
* **Registro Integrado de Vendas:** Validação rigorosa e gravação das vendas diretamente no banco de dados (`uDMConexao`).
* **Impressão de Cupons:** Formatação automática e emissão do cupom de venda para o cliente (`uCupom`).

## 💻 Tecnologias e Arquitetura

O projeto foi construído utilizando as seguintes tecnologias:

* **Frontend & Lógica de Negócios:** Delphi VCL, Object Pascal
* **Banco de Dados:** Microsoft SQL Server
* **Consultas e Acesso a Dados:** T-SQL otimizado (via Data Module)

## ⚙️ Estrutura e Configuração

Para executar e compreender a arquitetura do projeto, os principais módulos estão organizados da seguinte forma:

* **`PDV.dproj`**: Arquivo principal e configurações do projeto.
* **`uPDVPrincipal`**: Tela e lógica central do Ponto de Venda.
* **`uDMConexao`**: Data Module responsável por gerenciar a conexão com o banco de dados.
* **Pasta `/img`**: Diretório que deve conter as fotos parametrizadas dos produtos.
* **Pastas `Win32/` / `Win64/`**: Diretórios de compilação dos binários executáveis.
