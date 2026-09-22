# Desafio Banco de Dados 

## Desafio número 2: Estoque da Loja

## Conhecimentos testados: 
- DDL
- DML
- MER e DER
- Dicionário de dados
- CSV

## Dicionário de Dados

Entidades,Atributos,Tipo,Tamanho,Descrição
Produto,ID,Int,11,Chave Primária
Produto,Nome,Varchar,100,Nome do produto
Produto,Descrição,Varchar,80,Descrição do produto
Produto,Preço,Int,11,Preço do Produto
Produto,ID_categoria,Int,11,Chave Estrangeira
Produto,ID_fornecedor,Int,11,Chave Estrangeira
Categoria,ID,int,11,Chave Primária
Categoria,Nome,Varchar,20,Nome da Categoria do produto
Categoria,Descrição,Varchar,80,Descrição do produto e da categoria
Fornecedor,ID,Int,11,Chave Primária
Fornecedor,razao_social,Varchar,11,Nome oficial da Empresa
Fornecedor,nome_fantasia,Varchar,20,Apelido da empresa
Fornecedor,CNPJ,Varchar,20,Documento da empresa
Fornecedor,Telefone,Varchar,50,Telefone da empresa
Fornecedor,Email,Varchar,50,Email da empresa
Fornecedor,Endereço,varchar,50,Endereço da empresa
Estoque,ID,Int,11,Chave Primária 
Estoque,ID_produto,int,11,Chave Estrangeira
Estoque,Quantidade,int,11,Quantidade de produtos
Estoque,Quantidade Mínima,int,11,Quantidade mínima de produtos que precisam ser comprados
Estoque,Localização,Varchar,50,Onde o produto está na loja
Movimentação do Estoque,ID,int,11,Chave Primária
Movimentação do Estoque,ID_produto,int,11,Chave Estrangeira
Movimentação do Estoque,Tipo,Enum,Se o produto é ENTRADA ou SAIDA
Movimentação do Estoque,Quantidade,int,11,Quantidade do Produto
Movimentação do Estoque,Data,Date,Data que o produto foi comprado
