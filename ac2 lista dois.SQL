
-- 1 da 2 Realizar a inserção de um novo cliente, os dados de cadastro são o seguinte:
-- a) RG: 22.123.234-8
-- b) Nome: Dino da Silva Sauro
-- c) Endereço: Rua Joaquim Silveira,34
-- d) Bairro: Jd. Romano
-- e) Cidade: São Roque
-- f) Estado: SP
-- g) Sexo: M
INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, sexo)
VALUES ('22.123.234-8', 'Dino da Silva Sauro', 'Rua Joaquim Silveira, 34', 'Jd. Romano', 'São Roque', 'SP', 'M');

-- 2 da 2 INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao)
 VALUES 
 (11, 10, '2005-05-12', '2005-08-23'),
 (11, 8, '2006-07-12', '2003-06-15'),

-- 3 da2 INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao)
 VALUES 
 (11, 10, '2005-05-12', '2005-08-23'),
 (11, 8, '2006-07-12', '2003-06-15'),
 (11, 11, '2004-07-12', '2000-06-15')

-- 4 da 2 Atualizar o nome da categoria “Desenho” para “Animação”.
 UPDATE categoria
 SET nome_categoria = 'Animação'
 WHERE nome_categoria = 'Desenho';

-- 5 da 2 Um cliente ligou e pediu para deixar reservado todos os filmes do diretor “Terry
-- Gilliam”, realizar essa atualização.
 UPDATE categoria
 SET nome_categoria = 'Animação'
 WHERE nome_categoria = 'Desenho';

-- 6 da 2 O cliente “Rafael Nunes Sales” mudou para a Rua Guilherme Orlando, 333 no
-- jardim Santa Rosália e seu novo telefone é 1532145543, realizar as alterações no
-- seu registro.
 UPDATE cliente
 SET endereco = 'Rua Guilherme Orlando, 333', 
    bairro = 'Jardim Santa Rosália', 
    telefone = '1532145543'
 WHERE nome = 'Rafael Nunes Sales';

-- 7 da 2 Atualizar o nome de todas as categoria de filmes deixando-as com todas as letras
-- maiúsculas.
 UPDATE categoria
 SET nome_categoria = UPPER(nome_categoria);


-- 8 da 2 Realizar um reajuste no valor de do filme para 50% no valor atual para os filmes
-- “A Mexicana”, “A Verdade Nua e Crua” e “Austrália”.
 UPDATE filme
 SET valor_locacao = valor_locacao * 1.5
 WHERE filme IN ('A Mexicana', 'A Verdade Nua e Crua', 'Austrália');

-- 9 da 2 Excluir todas as categorias de filmes que não possuem filmes cadastrados.
 DELETE FROM categoria
 WHERE cod_categoria NOT IN (SELECT DISTINCT cod_categoria FROM filme);

-- 10 da 2 Inserir o seu registro na tabela de clientes.
-- Exercícios de SQL (D M L) – Lista 2
 INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo)
 VALUES ('123456789', 'Seu Nome', 'Seu Endereço', 'Seu Bairro', 'Sua Cidade', 'SP', '123456789', 'seu.email@example.com', '1990-01-01 00:00:00', 'M');
