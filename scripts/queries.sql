SELECT * FROM Equipe;

SELECT * FROM Jogador;

SELECT * FROM Residencia;

SELECT * FROM Campeonato;

SELECT * FROM Campeonatos_Participados_Equipe;

SELECT * FROM Jogador_Em_Equipe_Data;

SELECT * FROM Jogador INNER JOIN Jogador_Em_Equipe_Data ON Jogador.id_jogador = Jogador_Em_Equipe_Data.id_jogador;
