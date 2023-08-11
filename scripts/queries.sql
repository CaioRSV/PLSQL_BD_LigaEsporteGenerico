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
------------------

CREATE OR REPLACE FUNCTION ClassificacoesCampeonato (input_camp text) RETURNS TABLE AS $$
BEGIN
    RETURN QUERY (SELECT Equipe.nome, Campeonatos_Participados_Equipe.ranking 
    FROM Equipe INNER JOIN Campeonatos_Participados_Equipe
    WHERE Equipe.id_equipe = input_camp AND
    WHERE Equipe.id_equipe = Campeonatos_Participados_Equipe
    )

END

-- CREATE OR REPLACE FUNCTION select_based_on_input(user_input text) RETURNS TABLE(column_name data_type) AS $$
-- BEGIN
--     RETURN QUERY SELECT column_name FROM your_table WHERE some_condition = user_input;
-- END;
-- $$ LANGUAGE plpgsql;

-- CREATE OR REPLACE FUNCTION ClassificacoesCampeonato (input_camp text) RETURNS TABLE AS $$
-- BEGIN
--     RETURN QUERY (SELECT Equipe.nome, Campeonatos_Participados_Equipe.ranking 
--     FROM Equipe INNER JOIN Campeonatos_Participados_Equipe
--     WHERE Campeonatos_Participados_Equipe = input_camp AND
--     WHERE Equipe.id_equipe = Campeonatos_Participados_Equipe
--     )
    
-- END

SELECT 
    Campeonato.nome, Equipe.nome, Campeonatos_Participados_Equipe.ranking FROM ((Equipe 
    INNER JOIN Campeonatos_Participados_Equipe ON Equipe.id_equipe = Campeonatos_Participados_Equipe.id_equipe)
    INNER JOIN Campeonato ON Campeonato.id_campeonato = Campeonatos_Participados_Equipe.id_campeonato
    )



-- ClassificacoesCampeonato('C#001');

-- CREATE OR REPLACE FUNCTION ContarJogadorRank1Mundial(
--     p_id_jogador IN Jogador.id_jogador%TYPE
-- )

-- RETURN NUMBER
-- IS
--     v_count NUMBER := 0;
-- BEGIN
--     SELECT COUNT(*) INTO v_count
--     FROM Jogador j
--     JOIN Jogador_Em_Equipe_Data jed ON j.id_jogador = jed.id_jogador
--     JOIN Equipe e ON jed.equipe_na_data = e.id_equipe
--     JOIN Campeonatos_Participados_Equipe cpe ON e.id_equipe = cpe.id_equipe
--     JOIN Campeonato c ON cpe.id_campeonato = c.id_campeonato
--     WHERE j.id_jogador = p_id_jogador
--     AND c.tipo = 'Mundial'
--     AND cpe.ranking = 1;

--     RETURN v_count;
-- EXCEPTION
--     WHEN NO_DATA_FOUND THEN
--         RETURN 0;
--     WHEN OTHERS THEN
--         -- Handle exceptions here if needed
--         RETURN -1;
-- END;
-- /

-- SELECT ContarJogadorRank1Mundial('J#003') AS count_jogador_mundial_rank_1 FROM DUAL;