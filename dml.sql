use estoque_loja;

insert into 
produto
values 
(null, "canetinha dourada com glitter", "produto de uso infantil", 199.00, "glitterina", 1, 2), 
(null, "livro venesiado do século XIX", "produto rarrísimo", 196777, "coisas raras", 3, 4), 
(null, "aviãozinho de papel do império chinês", "produto valioso e interessante", 158799, "dinástia Xing", 5, 6);
SELECT * FROM produto;

insert into
categoria
values
(null, "categoria escolar", "canetinha de uso escolar"),
(null, "categoria histórico", "produto raro"),
(null, "categoria histórico", "produto interessante");
SELECT * FROM categoria;

insert into
fornecedor
values
(null, "empresa glitterina", "A glittera", "02.653.845/0001-01", "(19)67670-8908", "glitterina@gmail.com", "Rua Sonhos, 980" ),
(null, "penhores históricos", "coisas raras", "06.659.780/0004-01", "(19)90679-7908", "históricos@gmail.com", "Rua História, 790" ),
(null, "penhores históricos", "coisas raras", "06.659.780/0004-01", "(19)90679-7908", "históricos@gmail.com", "Rua História, 790" );
SELECT * FROM fornecedor;

insert into
estoque
values
(null, 1, 455, 440, "atrás da loja"),
(null, 2, 3, 1, "atrás da loja"),
(null, 3, 4, 2, "atrás da loja");
SELECT * FROM estoque;

insert into
movimentacao_estoque
values
(null, 1, 'ENTRADA', 455, '2026-01-15 14:30:00'),
(null, 2, 'ENTRADA', 1, '2026-07-16 15:30:00'),
(null, 3, 'ENTRADA' 2, '2026-09-09 13:30:00');
SELECT * FROM movimentacao_estoque;
