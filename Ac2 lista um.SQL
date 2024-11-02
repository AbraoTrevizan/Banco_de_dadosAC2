-- 1 da 1 Mostre uma lista com o código de cada filme que já foi alugado e a quantidade de vezes quefoi
-- alugado.
-- SELECT cod_filme, COUNT(*) AS quantidade_alugueis
-- FROM locacao
-- GROUP BY cod_filme;

-- 2 da1 Mostre o nome e a data de devolução de todos os filmes de Ação cujo diretor seja RichardDonner
-- que foram alugados pelo cliente Abimael Silva.
-- SELECT f.filme, l.data_devolucao
-- FROM locacao l
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- JOIN cliente c ON l.cod_cliente = c.cod_cliente
-- JOIN categoria cat ON f.cod_categoria = cat.cod_categoria
-- WHERE cat.nome_categoria = 'Ação'
  -- AND f.diretor = 'Richard Donner'
  -- AND c.nome = 'Abimael Silva';
  
-- 3 da 1 Mostre o nome do filme, seu valor de locação, um campo chamado desconto onde deve aparecer
-- o valor de 10% de desconto em cima do valor de locação e um campo chamado valor_final que deve
-- possuir valor de locação menos os dez por cento de desconto dado.
  -- SELECT 
    -- filme,
    -- valor_locacao,
    -- valor_locacao * 0.10 AS desconto,
    -- valor_locacao - (valor_locacao * 0.10) AS valor_final
-- FROM 
    -- filme;
    
    
   -- 4 da 1 Mostre sem repetição de registros, todos os filmes alugados por clientes da cidade de Votorantim.
    -- SELECT DISTINCT f.filme
-- FROM locacao l
-- JOIN cliente c ON l.cod_cliente = c.cod_cliente
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- WHERE c.cidade = 'Votorantim';

 -- 5 da 1 Mostre qual o último filme alugado
-- SELECT f.filme
-- FROM locacao l
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- ORDER BY l.data_retirada DESC
-- LIMIT 1;

-- 6 da 1 Mostre quanto à locadora lucrou com as locações do filme “A vida é bela”
-- SELECT SUM(f.valor_locacao) AS lucro_total
-- FROM locacao l
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- WHERE f.filme = 'A vida é bela';

-- Mostre a quantidade de saídas de filmes para locação agrupando a consulta pordiretor.
  -- SELECT f.diretor, COUNT(l.cod_filme) AS quantidade_locacoes
-- FROM filme f
-- LEFT JOIN locacao l ON f.cod_filme = l.cod_filme
-- GROUP BY f.diretor;

-- 8 da 1 Mostre todas as categorias dos filmes alugados pela cliente MariaChiquinha.
-- SELECT DISTINCT c.nome_categoria
-- FROM locacao l
-- JOIN cliente cli ON l.cod_cliente = cli.cod_cliente
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- JOIN categoria c ON f.cod_categoria = c.cod_categoria
-- WHERE cli.nome = 'Maria Chiquinha';

-- 9 da 1 Mostre o nome e o telefone de todos os clientes que já alugaram o filmeConstantine.
-- SELECT cli.nome, cli.telefone
-- FROM locacao l
-- JOIN cliente cli ON l.cod_cliente = cli.cod_cliente
-- JOIN filme f ON l.cod_filme = f.cod_filme
-- WHERE f.filme = 'Constantine';

-- 10 da 1 Mostre todas as categorias de filmes que não possuem filmes cadastrado.
-- SELECT c.nome_categoria
-- FROM categoria c
-- LEFT JOIN filme f ON c.cod_categoria = f.cod_categoria
-- WHERE f.cod_filme IS NULL;