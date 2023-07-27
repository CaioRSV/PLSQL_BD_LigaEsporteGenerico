INSERT INTO Equipe VALUES ('E#001', 'ABCers', TO_DATE('2023-10-12', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#002', 'Bombers', TO_DATE('2017-10-12', 'YYYY-MM-DD'), 0, 0);


-- Equipe 1
INSERT INTO Residencia VALUES('R#001', 'Brasil', 'Pernambuco', 'Vitória de St. Antão');
INSERT INTO Jogador VALUES ('J#001', 'J1', TO_DATE('1993-10-12', 'YYYY-MM-DD'), 'Brasileiro', 'R#001', 'E#001', 0, 0);

INSERT INTO Residencia VALUES('R#002','Chile', 'Estado2', 'Cidade2');
INSERT INTO Jogador VALUES('J#002', 'J2', TO_DATE('1988-10-12', 'YYYY-MM-DD'), 'Chileno', 'R#002', 'E#001', 0, 0);


-- Equipe 2
INSERT INTO Jogador VALUES ('J#003', 'J3', TO_DATE('1995-10-12', 'YYYY-MM-DD'), 'Brasileiro', 'R#001', 'E#002', 0, 0);

INSERT INTO Residencia VALUES('R#003', 'Brasil', 'Pernambuco', 'Recife');
INSERT INTO Jogador VALUES ('J#004', 'J4', TO_DATE('1998-10-12', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#002', 0 ,0 );


-- Criando camp sample

INSERT INTO Campeonato VALUES ('C#001', 'Campeonato Number 1',TO_DATE('2023-08-01', 'YYYY-MM-DD'), 'E#002');

--Adicionando participação nos camps

INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#001', 'C#001');
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#002', 'C#001');