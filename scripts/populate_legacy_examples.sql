INSERT INTO Equipe VALUES ('E#001', 'ABCers', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#002', 'Bombers', TO_DATE('2017-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#003', 'Contra Ataque 1.6', TO_DATE('2018-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#004', 'Denver Broncas', TO_DATE('2018-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#005', 'Enter the Fire', TO_DATE('2019-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#006', 'Failure Gang', TO_DATE('2019-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#007', 'Goodmen', TO_DATE('2018-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#008', 'Heroesnt', TO_DATE('2017-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#009', 'Ishmaria', TO_DATE('2016-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#010', 'Jacarés', TO_DATE('2015-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#011', 'KYS!N!', TO_DATE('2014-01-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO Equipe VALUES ('E#012', 'Lmao', TO_DATE('2013-01-01', 'YYYY-MM-DD'), 0, 0);
-- Abaixo inutil pra testes
INSERT INTO Equipe VALUES ('E#013', 'Zeroes at the left', TO_DATE('2013-01-01', 'YYYY-MM-DD'), 0, 0);
--




-- Equipe 1 (ABCers)
INSERT INTO Residencia VALUES('R#001', 'Brasil', 'Pernambuco', 'Vitória de St. Antão');
INSERT INTO Jogador VALUES ('J#001', 'João', TO_DATE('1993-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#001', 'E#001', 0, 12);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#001');

INSERT INTO Residencia VALUES('R#002','Chile', 'Grande Santiago', 'Santiago');
INSERT INTO Jogador VALUES('J#002', 'Eduardo', TO_DATE('1988-01-01', 'YYYY-MM-DD'), 'Chileno', 'R#002', 'E#001', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#002', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#001');

-- Equipe 2 (Bombers)
INSERT INTO Jogador VALUES ('J#003', 'Pedro', TO_DATE('1995-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#001', 'E#002', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#003', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#002');


INSERT INTO Residencia VALUES('R#003', 'Brasil', 'Pernambuco', 'Recife');
INSERT INTO Jogador VALUES ('J#004', 'Marcos', TO_DATE('1998-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#002', 0 ,0 );
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#004', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#002');


-- Equipe 3 (Contra Ataque 1.6)

INSERT INTO Jogador VALUES ('J#005', 'Pontan', TO_DATE('1994-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#003', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#005', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#003');

INSERT INTO Jogador VALUES('J#006', 'DoBronca', TO_DATE('1992-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#003', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#006', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#003');


-- Equipe 4 (Denver Broncas)
INSERT INTO Residencia VALUES('R#004', 'Australia', 'Sidney', 'SomePlaceMate');
INSERT INTO Jogador VALUES ('J#007', 'Max', TO_DATE('1994-01-01', 'YYYY-MM-DD'), 'Australiano', 'R#004', 'E#004', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#007', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#004');


INSERT INTO Jogador VALUES ('J#008', 'Scott', TO_DATE('1998-01-01', 'YYYY-MM-DD'), 'Australiano', 'R#004', 'E#004', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#008', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#004');

-- Equipe 5 (Enter the fire)
INSERT INTO Residencia VALUES('R#005', 'China', 'Pequim', '土豆');
INSERT INTO Jogador VALUES ('J#009', 'Uzi', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Chinês', 'R#005', 'E#005', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#009', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#005');


INSERT INTO Jogador VALUES ('J#010', 'Lee Sang', TO_DATE('1997-01-01', 'YYYY-MM-DD'), 'Coreano', 'R#005', 'E#005', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#010', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#005');


-- Equipe 6 (Failure Gang)
INSERT INTO Residencia VALUES('R#006', 'Estados Unidos', 'California', 'Sacramento');
INSERT INTO Jogador VALUES ('J#011', 'Ion', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#006', 'E#006', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#011', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#006');

INSERT INTO Jogador VALUES('J#012', 'Antwon', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#006', 'E#006', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#012', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#006');


-- Equipe 7 (Goodmen)

INSERT INTO Residencia VALUES('R#007', 'Estados Unidos', 'New Mexico', 'Albuquerque');
INSERT INTO Jogador VALUES ('J#013', 'Saul', TO_DATE('1980-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#007', 'E#007', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#013', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#007');

INSERT INTO Jogador VALUES('J#014', 'Mike', TO_DATE('1980-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#007', 'E#007', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#014', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#007');

-- Equipe 8 (Heroesnt)

INSERT INTO Residencia VALUES('R#008', 'United Kingdom', 'London', 'Hogwarts');
INSERT INTO Jogador VALUES ('J#015', 'Bloke', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#008', 'E#008', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#015', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#008');

INSERT INTO Jogador VALUES('J#016', 'Henry Pawter', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Estadunidense', 'R#008', 'E#008', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#016', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#008');

-- Equipe 9 (Ishmaria)

INSERT INTO Jogador VALUES ('J#017', 'Fulano', TO_DATE('1995-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#009', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#017', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#009');

INSERT INTO Jogador VALUES ('J#018', 'Cicrano', TO_DATE('1998-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#003', 'E#009', 0 ,0 );
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#018', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#009');


-- Equipe 10 (Jacarés)

INSERT INTO Residencia VALUES('R#011', 'Brasil', 'Bahia', 'Salvador');

INSERT INTO Jogador VALUES ('J#019', 'Baia', TO_DATE('1996-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#011', 'E#010', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#019', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#010');

INSERT INTO Jogador VALUES ('J#020', 'Besouro', TO_DATE('1996-01-01', 'YYYY-MM-DD'), 'Brasileiro', 'R#011', 'E#010', 0 ,0 );
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#020', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#010');

-- Equipe 11 (KYS!N!)

INSERT INTO Residencia VALUES('R#009', 'Evil Cadana', 'Evil Ontario', 'Evil Toronto');
INSERT INTO Jogador VALUES ('J#021', 'Anti-Hockey', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'CanadenseReverso', 'R#009', 'E#011', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#021', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#011');

INSERT INTO Jogador VALUES('J#022', 'NotSorry', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'CanadenseReverso', 'R#009', 'E#011', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#022', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#011');


-- Equipe 12 (Lmao)

INSERT INTO Residencia VALUES('R#010', 'Cadana', 'Ontario', 'Toronto');
INSERT INTO Jogador VALUES ('J#023', 'Hockey', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'Canadense', 'R#010', 'E#012', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#023', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#012');

INSERT INTO Jogador VALUES('J#024', 'Sorry', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'Canadense', 'R#010', 'E#012', 0, 0);
INSERT INTO Jogador_Em_Equipe_Data VALUES ('J#024', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'E#012');



-- Criando camp sample

INSERT INTO Campeonato VALUES ('C#001', 'Campeonato Number 1',TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Mundial', 'E#002');

--Adicionando participação nos camps

INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#002', 'C#001', 1);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#001', 'C#001', 2);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#003', 'C#001', 3);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#004', 'C#001', 4);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#005', 'C#001', 5);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#006', 'C#001', 6);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#007', 'C#001', 7);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#008', 'C#001', 8);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#009', 'C#001', 9);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#010', 'C#001', 10);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#011', 'C#001', 11);
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#012', 'C#001', 12);


-- Outro camp sample

INSERT INTO Campeonato VALUES ('C#002', 'Campeonato Number 2',TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Mundial', 'E#002');
INSERT INTO Campeonatos_Participados_Equipe VALUES ('E#005', 'C#002', 3);
