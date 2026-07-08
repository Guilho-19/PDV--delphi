# 🛒 Sistema de Ponto de Venda (PDV)

![Delphi](https://img.shields.io/badge/DELPHI-VCL-E02323?style=flat-square&labelColor=333333) ![Object Pascal](https://img.shields.io/badge/OBJECT%20PASCAL-CODE-007ACC?style=flat-square&labelColor=333333) ![SQL Server](https://img.shields.io/badge/SQL%20SERVER-T--SQL-CC292B?style=flat-square&labelColor=333333)

## 📌 Sobre o Projeto

O **Sistema de Ponto de Venda (PDV)** é uma aplicação desktop desenvolvida com foco em otimizar o processo de vendas e o controle de estoque do varejo. O objetivo principal do sistema é fornecer uma interface fluida, moderna e de rápido acesso por teclado, para operações de caixa e gerenciamento diário.

O sistema possui uma interface flat modernizada nativamente em Delphi VCL e integração com banco de dados Microsoft SQL Server via ADO, permitindo transações seguras, rápidas e estáveis.

## ⚙️ Funcionalidades

### 1. Frente de Caixa (PDV)
- **Registro Otimizado:** Inserção rápida de itens via código de barras com atalho multiplicador de quantidades.
- **Validação de Estoque:** Bloqueio automático de vendas com quantidade superior ao estoque atual.
- **Cancelamentos:** Permite o cancelamento individual de itens e o estorno completo da venda atual.
- **Identificação Visual:** Exibe a foto cadastrada do produto em tempo real na tela (via campo `caminho_imagem`).

### 2. Pagamento de Vendas
- Múltiplas formas de recebimento integradas (Dinheiro, Cartão de Crédito, Cartão de Débito, Pix).
- Pagamento fracionado ou dividido (múltiplas formas para a mesma venda).
- Cálculo automático de saldo restante e troco em tempo real.

### 3. Busca e Consulta Rápida
- Consulta interativa de produtos pela descrição do nome.
- Grid que exibe em tempo real: Código de Barras, Descrição, Preço e Estoque Atual.
- Tela com foco voltado à usabilidade do operador.

### 4. Controle de Estoque
- Módulo prático e direto de **Entrada de Estoque**.
- Permite o abastecimento ágil no banco de dados lendo o código de barras e adicionando as novas unidades.

### 5. Relatórios e Auditoria (FortesReport)
- **Fechamento de Caixa:** Resumo financeiro rápido contendo os subtotais e a somatória do dia agrupada por forma de pagamento.
- **Vendas Canceladas:** Histórico e rastreabilidade de todas as vendas estornadas (auditoria e prevenção de perdas).
- Interfaces dos relatórios modernizadas, padronizadas e com leitura "zebrada".

### 6. Emissão de Cupom Não Fiscal
- Geração e formatação automática em modo texto do cupom de venda.
- Envio direto de impressão via `TPrinter` assim que a venda é concluída e o troco é exibido.

## 🛠️ Tecnologias e Arquitetura

O projeto foi construído sobre a seguinte stack:

* **Linguagem & Interface:** Delphi VCL (Object Pascal)
* **Banco de Dados:** Microsoft SQL Server (Integrado via dbGo / ADO)
* **Motor de Relatórios:** Fortes Report CE

## 📂 Estrutura de Arquivos Principais

* **`uPDVPrincipal`**: Tela e lógica central de vendas.
* **`uPagamento`**: Módulo de cálculos e fechamento da venda.
* **`uBuscaNomeProduto`**: Formulário de pesquisa em formato de grid.
* **`uEntradaEstoque`**: Formulário de acréscimo de quantidades ao inventário.
* **`uRelatorios` / `uRelCaixa` / `uRelVendasCanceladas`**: Suíte de ferramentas gerenciais.
* **`uCupom`**: Lógica de preenchimento de variáveis no cupom em impressoras de bobina.
* **`uDMConexao`**: Data Module responsável pelo Data Layer, abrigando queries T-SQL e configurações de acesso ao banco.
