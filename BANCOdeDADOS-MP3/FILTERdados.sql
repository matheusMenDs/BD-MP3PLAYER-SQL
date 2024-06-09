USE mp3player;        -- USO DO BANCO DE DADOS MP3PLAYER

-- SELECIONANDO E MOSTRANDO ITEM POR ITEM SEPARADAMENTE
SELECT ID FROM musicas;  -- MOSTRE APENAS O ID DAS MÚSICAS (QNTD DE MÚSICAS)

SELECT DJ FROM musicas;  -- MOSTRE APENAS O NOME DOS DJS

SELECT TITULO FROM musicas;  -- MOSTRE APENAS O TÍTULO DAS MÚSICAS

SELECT TEMPO FROM musicas;  -- MOSTRE APENAS O TEMPO DAS MÚSICAS

SELECT GENERO FROM musicas;  -- MOSTRE APENAS OS GENÊROS DAS MÚSICAS

-- ---------------------------------------------------------------------------

-- SEPARANDO E MOSTRANDO APENAS ALGUNS ITENS
SELECT ID, TITULO FROM musicas;  -- MOSTRE APENAS O ID E O TÍTULO DAS MÚSICAS

SELECT ID, DJ, TITULO FROM musicas;  -- MOSTRE APENAS O ID, O NOME DO DJ, E O TÍTULO DAS MÚSICAS 

SELECT TITULO, TEMPO FROM musicas;  -- MOSTRE APENAS O TÍTULO E O TEMPO DAS MÚSICAS

SELECT TITULO, GENERO FROM musicas;  -- MOSTRE APENAS O TÍTULO E O GÊNERO DAS MÚSICAS

SELECT DJ, TITULO, GENERO FROM musicas;  -- MOSTRE APENAS O NOME DO DJ,O TÍTULO E O GÊNERO DAS MÚSICAS

-- ---------------------------------------------------------------------------

-- SEPARANDO E MOSTRANDO APENAS ALGUNS ITENS E ORDENANDO-OS
SELECT TITULO, TEMPO FROM musicas  -- MOSTRE APENAS O TÍTULO E O TEMPO DAS MÚSICAS
ORDER BY TEMPO;                    -- E ORDENADO PELO TEMPO CRESCENTE

SELECT TITULO, TEMPO FROM musicas  -- MOSTRE APENAS O TÍTULO E O TEMPO DAS MÚSICAS
ORDER BY TEMPO DESC;                    -- E ORDENADO PELO TEMPO DECRESCENTE

SELECT  DJ, TITULO, GENERO FROM musicas  -- MOSTRE APENAS O NOME DO DJ, O TÍTULO E O GÊNERO DAS MÚSICAS
ORDER BY DJ;                             -- E ORDENADO EM ORDEM ALFABÉTICA

SELECT  DJ, TITULO, GENERO FROM musicas  -- MOSTRE APENAS O NOME DO DJ, O TÍTULO E O GÊNERO DAS MÚSICAS
ORDER BY POR;                             -- E ORDENADO GENERO

-- ---------------------------------------------------------------------------

-- FILTRANDO E MOSTRANDO APENAS OS ITENS QUE ATENDEM AOS REQUISITOS (COMEÇAR COM A LETRA "TAL" EX: A)
SELECT * FROM musicas     -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS DO BANCO DE DADOS QUE COMEÇAM COM A LETRA "A"
WHERE TITULO LIKE 'a%';

SELECT DJ FROM musicas   -- MOSTRE APENAS OS DJS DO BANCO DE DADOS QUE COMEÇAM COM A LETRA "A"
WHERE DJ LIKE 'a%';

SELECT * FROM musicas     -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS DO BANCO DE DADOS QUE COMEÇAM COM A LETRA "Z"
WHERE TITULO LIKE 'Z%';

SELECT DJ FROM musicas   -- MOSTRE APENAS OS DJS DO BANCO DE DADOS QUE COMEÇAM COM A LETRA "M"
WHERE DJ LIKE 'M%';

-- ---------------------------------------------------------------------------

-- FILTRANDO E MOSTRANDO APENAS AS MÚSICAS QUE POSSUEM MENOS OU MAIS TEMPO (ORDER TBM)
SELECT * FROM musicas
WHERE TEMPO > '00:05:00';     -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS QUE POSSUEM MAIS DE 5 MINUTOS

SELECT * FROM musicas
WHERE TEMPO < '00:05:00';     -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS QUE POSSUEM MENOS DE 5 MINUTOS

SELECT TITULO, TEMPO FROM musicas
WHERE TEMPO > '00:08:00'     -- MOSTRE APENAS O NOME E O TEMPO DAS MÚSICAS QUE POSSUEM MAIS DE 8 MINUTOS
ORDER BY TITULO;             -- E EM ORDEM ALFABÉTICA

SELECT TITULO, GENERO FROM musicas
WHERE TEMPO < '00:07:00'     -- MOSTRE APENAS O NOME E O GÊNERO DAS MÚSICAS QUE POSSUEM MENOS DE 7 MINUTOS
ORDER BY TITULO;

-- ---------------------------------------------------------------------------

-- FILTRANDO E MOSTRANDO APENAS ALGUM ITEM QUE COMECE COM TAL LETRA E TENHA DETERMINADO TEMPO TAMBÉM (2 FILTROS)
SELECT * FROM musicas
WHERE TITULO LIKE 'a%' AND TEMPO < '00:06:00';   -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS QUE O NOME COMEÇA COM A LETRA A E TEMPO É MENOR DO QUE 6 MINUTOS

SELECT * FROM musicas
WHERE DJ LIKE 'M%' AND TEMPO < '00:08:00';   -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS QUE O NOME DO DJ COMEÇA COM A LETRA M E O ÉTEMPO MENOR DO QUE 8 MINUTOS

SELECT * FROM musicas
WHERE DJ LIKE 'C%' AND TEMPO > '00:03:00';   -- MOSTRE TUDO, PORÉM APENAS AS MÚSICAS QUE O NOME DO DJ COMEÇA COM A LETRA C E O TEMPO É MAIOR DO QUE 3 MINUTOS

SELECT TITULO FROM musicas
WHERE GENERO LIKE 'FULLON%' AND TEMPO < '00:07:00';   -- MOSTRE APENAS O TÍTULO DAS MÚSICAS QUE O GÊNERO = FULLON E O TEMPO É MENOR DO QUE 7 MINUTOS

SELECT DJ FROM musicas
WHERE TITULO LIKE 'F%' AND TEMPO > '00:04:00';   -- MOSTRE APENAS O NOME DOS DJS ONDE O NOME DA MÚSICA COMEÇA COM A LETRA F E O TEMPO É MAIOR DO QUE 4 MINUTOS




