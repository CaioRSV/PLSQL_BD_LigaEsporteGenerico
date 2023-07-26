INSERT INTO Equipe VALUES (1, 'ABCers', TO_DATE('2023-10-12', 'YYYY-MM-DD'), 2, 0);
INSERT INTO Equipe VALUES (2, 'Bombers', TO_DATE('2017-10-12', 'YYYY-MM-DD'), 2, 1);


-- Equipe 1
INSERT INTO Residencia VALUES(1, 'Brasil', 'Pernambuco', 'Vitória de St. Antão');
INSERT INTO Jogador VALUES (1, 'J1', 30, 'Brasileiro', 1, 1, 0, 0);

INSERT INTO Residencia VALUES(2,'Chile', 'Estado2', 'Cidade2');
INSERT INTO Jogador VALUES(2, 'J2', 35, 'Chileno', 2, 1, 0, 0);


-- Equipe 2
INSERT INTO Jogador VALUES (3, 'J3', 28, 'Brasileiro', 1, 1, 0, 0);

INSERT INTO Residencia VALUES(3, 'Brasil', 'Pernambuco', 'Recife');
INSERT INTO Jogador VALUES (4, 'J4', 25, 'Brasileiro', 1, 1, 0 ,0 );


-- Criando camp sample

INSERT INTO Campeonato VALUES (1, 'Campeonato Number 1',TO_DATE('2023-08-01', 'YYYY-MM-DD'), 2);

--Adicionando participação nos camps

INSERT INTO Campeonatos_Participados_Equipe VALUES (1, 1);
INSERT INTO Campeonatos_Participados_Equipe VALUES (2, 1);