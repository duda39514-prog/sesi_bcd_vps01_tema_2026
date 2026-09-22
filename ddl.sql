drop database if exists estoque_loja;
create database estoque_loja;

use estoque_loja;

create table produto(
    id int(11) primary key not null auto_increment,
    nome varchar(100) not null,
    descricao varchar(80) not null, 
    preco int(11) not null,
    marca varchar(19) not null,
    id_categoria int(11) not null,
    id_fornecedor int(11) not null
);

create table categoria (
    id int(11) primary key not null auto_increment,
    nome varchar(20) not null,
    descricao varchar(80) not null
);

create table fornecedor (
    id int(11) primary key not null auto_increment,
    razao_social varchar(11) not null, 
    nome_fantasia varchar(20)not null,
    cnpj varchar(20) not null,
    telefone varchar(50) not null,
    email varchar(50) not null,
    endereco varchar(50) not null
    );

create table estoque(
    id int(11) primary key not null auto_increment,
    id_produto int(11) not null,
    quantidade int(11) not null,
    quantidade_minima int(11) not null,
    localizacao varchar(50) not null
);

create table movimentacao_estoque(
    id int(11) primary key not null auto_increment,
    id_produto int(11) not null,
    tipo enum('ENTRADA', 'SAIDA') not null,
    quantidade int(11) not null,
    data Date default(curdate()) not null
);

alter table produto add constraint fornece foreign key (id_categoria) references categoria(id);
alter table produto add constraint possui foreign key (id_fornecedor) references fornecedor(id);
alter table estoque add constraint contem foreign key (id_produto) references produto(id);
alter table movimentacao_estoque add constraint registra foreign key (id_produto) references produto(id);
    

show tables;
describe produto;
describe categoria;
describe fornecedor;
describe estoque;
describe movimentacao_estoque;