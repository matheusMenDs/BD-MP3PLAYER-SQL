USE mp3player;        -- USO DO BANCO DE DADOS MP3PLAYER

SELECT * FROM musicas;   -- VISUALIZAÇÃO DA TABELA PARA ESCOLHER UMA MÚSICA PARA DELETAR

-- DELETANDO UMA MÚSICA DO BANCO DE DADOS
DELETE FROM musicas
WHERE ID = 39;   -- DELETE DO BANCO DE DADOS A MÚSICA CUJO ID = 39

SELECT * FROM musicas;   -- VISUALIZAÇÃO DA TABELA PARA SABER SE A MÚSICA DE ID 39 FOI APAGADA

-- MÚSICA DE ID 39 APAGADA COM SUCESSO DO BANCO DE DADOS (NOME DA MÚSICA APAGADA: ETHER, DJ: PURPLE SHAPES)
-- APÓS ESSA AÇÃO O BANCO DE DADOS NÃO POSSUI MAIS UMA POSIÇÃO DE ID 39, MUITO MENOS UMA MÚSICA ALOCADA NO LOCAL

-- EX EXTRA:
-- COMO EXCLUIR TODOS OS DADOS DE UMA TABELA INSTANTANEAMENTE: TRUNCATE TABLE musicas;

