USE mp3player;        -- USO DO BANCO DE DADOS MP3PLAYER

UPDATE musicas
SET Genero = 'FullonNight'      -- ALTERAÇÃO DE VALORES NA TABELA (O GÊNERO DE UMA MÚSICA ESPECÍFICA DA TABELA FOI ALTERADO)
WHERE Titulo = 'Bebopper';     

SELECT * FROM musicas;   -- VISUALIZAÇÃO DE COMO ESTÁ FICANDO A TABELA

-- -------------------------------------------------------------------------
UPDATE musicas
SET Titulo = 'Swampskunk'
WHERE DJ = 'Swampskunk';
-- EDIÇÃO FEITA PARA CORRIGIR O TÍTULO DA MÚSICA E O DJ (ESTAVAM TROCADOS UM COM O OUTRO)
UPDATE musicas
SET DJ = 'Twelve Sessions'
WHERE Titulo = 'Swampskunk';

SELECT * FROM musicas;    -- VISUALIZAÇÃO DE COMO ESTÁ FICANDO A TABELA
-- -------------------------------------------------------------------------

UPDATE musicas
SET Genero = 'FullonNight'      -- ALTERAÇÃO DE VALORES NA TABELA (ALTERANDO O GÊNERO DE OUTRAS MÚSICAS) 
WHERE Titulo IN ('Nanodroppin', 'Kentucky Fried Patterns',   -- PASSANDO O GÊNERO DE FULLON PARA FULLIN NIGHT
'Disjointed', 'Unity Gain', 'Black Hole Energy',
 'Spirit Overflow', 'Cueless', 'Disfunktion', 'Lil Bot',
 'Gourmet Noise', 'Toasted', 'Zero Gravity', 'Bazinga',
 'Drop & Roll', 'Dino', 'Thatcher Effect', 'Late of my Date',
 'Super Baked', 'Garden Of Weeden', 'No Rest For The Blast',
 'Deep Structure', 'Zone Approach', 'Rocking Horse', 'Fleeb Juice',
 'Chime Dragon', 'Bionic Boi', 'Deep Water', 'Indiginous',
 'Blast Your Mind', 'Swampskunk');
 
 SELECT * FROM musicas;     -- VISUALIZAÇÃO DE COMO ESTÁ FICANDO A TABELA
