-- SELECT * FROM Equipe;

-- SELECT * FROM Jogador;

-- SELECT * FROM Residencia;

-- SELECT * FROM Campeonato;

-- SELECT * FROM Campeonatos_Participados_Equipe;

-- SELECT * FROM Jogador_Em_Equipe_Data;

-- Selecione o número de times que possuem jogadores brasileiros
-- SELECT COUNT(DISTINCT id_equipe) FROM (Equipe INNER JOIN Jogador ON id_equipe = equipe_atual) WHERE Jogador.nacionalidade = 'Brasileiro';

-- Selecione o número de times que nunca ficaram no top 8 de nenhum campeonato

-- SELECT COUNT(DISTINCT id_equipe) FROM 
-- (SELECT Equipe.id_equipe, Campeonatos_Participados_Equipe.ranking FROM 
-- Equipe INNER JOIN Campeonatos_Participados_Equipe 
-- ON Equipe.id_equipe = Campeonatos_Participados_Equipe.id_equipe
--     WHERE Campeonatos_Participados_Equipe.ranking > 8);


-- Selecione o número de jogadores com número de troféus acima da média de todos os jogadores

-- SELECT COUNT(*) FROM Jogador WHERE trofeus > (SELECT SUM(TROFEUS) / COUNT(*) FROM Jogador);

-- Selecione todos os jogadores que já participaram de um campeonato com o time "Enter the fire" em um 
-- campeonato do tipo "Nacional" e nunca ganharam.

SELECT Jogador.nome
FROM Jogador INNER JOIN Jogador_Em_Equipe_Data ON Jogador.id_jogador = Jogador_Em_Equipe_Data.id_jogador
WHERE 
(Jogador_Em_Equipe_Data.ano IN 
(

SELECT Campeonato.ano FROM 
Campeonato INNER JOIN Campeonatos_Participados_Equipe ON Campeonato.id_campeonato = Campeonatos_Participados_Equipe.id_campeonato 
WHERE (Campeonatos_Participados_Equipe.id_equipe = 'E#005') AND (Campeonato.tipo = 'Nacional') AND (Campeonatos_Participados_Equipe.ranking > 1)
)
);

CREATE OR REPLACE TRIGGER residencia_existente
BEFORE INSERT ON Residencia
FOR EACH ROW 
DECLARE
    valor NUMBER;

BEGIN 
    SELECT COUNT(*) INTO valor FROM Residencia WHERE
    (pais_atual = :NEW.pais_atual) AND (estado = :NEW.estado) AND (municipio = :NEW.municipio);
    
    IF( valor > 0 )THEN
         DBMS_OUTPUT.PUT_LINE('Já existe um código de residência equivalente ao local informado.');
         RAISE_APPLICATION_ERROR(-20001, 'Já existe um código de residência equivalente ao local informado.');
    END IF;
END;