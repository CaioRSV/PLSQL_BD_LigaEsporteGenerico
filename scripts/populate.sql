-- Residencia
--INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES 
INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES ('#R001', 'Brasil', 'Pernambuco', 'Recife');
INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES ('#R002', 'Brasil', 'Pernambuco', 'Vitória de Sto. Antão');

-- Pessoa
--INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) VALUES
	-- Pessoas jogadores
INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P001', 'João Pedro', 'jp@sports.com', 11111, TO_DATE('2000-01-01', 'YYYY-MM-DD'), 1, '#R001');

INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P002', 'Zero balo', 'zb@sports.com', 22222, TO_DATE('2002-01-01', 'YYYY-MM-DD'), 1, '#R002');

	-- Pessoas tecnicos
INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P003', 'Zerivaldo Jones', 'zj@sports.com', 33333, TO_DATE('1980-02-02', 'YYYY-MM-DD'), 1, '#R001');

INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P004', 'Alfredo Malla', 'am@sports.com', 44444, TO_DATE('1980-03-03', 'YYYY-MM-DD'), 1, '#R001');

	-- Pessoas apresentadores
INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P005', 'Little House', 'lh@sports.com', 55555, TO_DATE('1991-02-02', 'YYYY-MM-DD'), 1, '#R001');

INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P006', 'Pombão Rueno', 'pr@sports.com', 66666, TO_DATE('1993-02-02', 'YYYY-MM-DD'), 1, '#R001');

-- Telefone
INSERT INTO Telefone (telefone, pessoa) VALUES (899999998, '#P001');
INSERT INTO Telefone (telefone, pessoa) VALUES (888888888, '#P001');

INSERT INTO Telefone (telefone, pessoa) VALUES (211111112, '#P002');
INSERT INTO Telefone (telefone, pessoa) VALUES (222222222, '#P002');
    
-- Equipe
INSERT INTO Equipe (id_equipe, nome, data_criacao) VALUES ('#E001', 'ABCers', TO_DATE('2023-10-23','YYYY-MM-DD'));
INSERT INTO Equipe (id_equipe, nome, data_criacao) VALUES ('#E002', 'Bombers', TO_DATE('2023-10-23','YYYY-MM-DD'));

-- Jogador
INSERT INTO Jogador (id_code, posicao_oficio, num_camisa, apelido, equipe_atual, liderado_por) VALUES
    ('#P001', 'Pos1', 25, 'Jepeto', '#E001', NULL);

INSERT INTO Jogador (id_code, posicao_oficio, num_camisa, apelido, equipe_atual, liderado_por) VALUES
    ('#P002', 'Pos1', 50, 'Zero Bullet', '#E002', NULL);

-- Tecnico
INSERT INTO Tecnico (id_code, estilo_tatico, equipe_atual) VALUES
    ('#P003', 'Agressivo', '#E001');

INSERT INTO Tecnico (id_code, estilo_tatico, equipe_atual) VALUES
    ('#P004', 'Cerco', '#E002');
-- Grupo midiático
INSERT INTO Grupo_midiatico (id_grupo_midiatico, nome, data_criacao) VALUES
	('#GM001','Globe', TO_DATE('1980-01-01', 'YYYY-MM-DD'));

INSERT INTO Grupo_midiatico (id_grupo_midiatico, nome, data_criacao) VALUES
	('#GM002','Zoi TV', TO_DATE('1970-01-01', 'YYYY-MM-DD'));
-- Apresentador
INSERT INTO Apresentador (id_code, funcao_principal, grupo_midiatico) VALUES
	('#P005', 'Narrador', '#GM001');

INSERT INTO Apresentador (id_code, funcao_principal, grupo_midiatico) VALUES
	('#P006', 'Narrador', '#GM002');
-- Campeoato
INSERT INTO Campeonato (id_camp, tipo_camp, nome_evento, data_inicio, data_fim) VALUES
	('#C001', 'Nacional', 'Championship1Nacional', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'));

INSERT INTO Campeonato (id_camp, tipo_camp, nome_evento, data_inicio, data_fim) VALUES
	('#C002', 'Internacional', 'Championship1Internacional', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'));
-- Declaracao
	-- Pessoa referneciando pessoa (auto)
INSERT INTO Declaracao (declarante, data_declaracao, conteudo) VALUES
	('#P001', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Sou ruim dms pprt');

INSERT INTO Dec_Ref_Pessoa (declarante, data_declaracao, pessoa_ref) VALUES
	('#P001', TO_DATE('2022-05-05', 'YYYY-MM-DD'), '#P001');

	--Pessoa referenciando camp
INSERT INTO Declaracao (declarante, data_declaracao, conteudo) VALUES
	('#P002', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Camp bom!');

INSERT INTO Dec_Ref_Campeonato (declarante, data_declaracao, camp_ref) VALUES
	('#P002', TO_DATE('2022-05-05', 'YYYY-MM-DD'), '#C001');
	-- Pessoa referenciando equipe
INSERT INTO Declaracao (declarante, data_declaracao, conteudo) VALUES
	('#P003', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Time pão hj em dia');

INSERT INTO Dec_Ref_Equipe (declarante, data_declaracao, equipe_ref) VALUES
	('#P001', TO_DATE('2022-05-05', 'YYYY-MM-DD'), '#E002');
	--Pesoa referenciando GM
INSERT INTO Declaracao (declarante, data_declaracao, conteudo) VALUES
	('#P004', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Esses ai so fala água');

INSERT INTO Dec_Ref_GM (declarante, data_declaracao, gm_ref) VALUES
	('#P004', TO_DATE('2022-05-05', 'YYYY-MM-DD'), '#GM001');
-- Cobre camp
INSERT INTO Cobre_camp (campeonato, apresentador, grupo_mid) VALUES 
    ('#C001', '#P005', '#GM001');

INSERT INTO Cobre_camp (campeonato, apresentador, grupo_mid) VALUES 
    ('#C002', '#P006', '#GM002');
-- Jogador_participa_camp
	-- #C001
INSERT INTO Jogador_participa_camp (campeonato, jogador, equipe, posicao, nota_performance) VALUES
	('#C001', '#P001', '#E001', 'Pos1', 9);

INSERT INTO Jogador_participa_camp (campeonato, jogador, equipe, posicao, nota_performance) VALUES
	('#C001', '#P002', '#E002', 'Pos1', 7);
	--#C002
INSERT INTO Jogador_participa_camp (campeonato, jogador, equipe, posicao, nota_performance) VALUES
	('#C002', '#P001', '#E001', 'Pos1', 5);

INSERT INTO Jogador_participa_camp (campeonato, jogador, equipe, posicao, nota_performance) VALUES
	('#C002', '#P002', '#E002', 'Pos1', 10);
-- Equipe_participa_camp
	--#C001
INSERT INTO Equipe_participa_camp (campeonato, equipe, tecnico, rank) VALUES
	('#C001', '#E001', '#P003', 1);

INSERT INTO Equipe_participa_camp (campeonato, equipe, tecnico, rank) VALUES
	('#C001', '#E002', '#P004', 2);
	--#C002

INSERT INTO Equipe_participa_camp (campeonato, equipe, tecnico, rank) VALUES
	('#C002', '#E001', '#P003', 2);

INSERT INTO Equipe_participa_camp (campeonato, equipe, tecnico, rank) VALUES
	('#C002', '#E002', '#P004', 1);
-- Pontuacao_anual
INSERT INTO Pontuacao_anual (equipe, pontos, ano) VALUES
	('#E001', 500, 2023);

INSERT INTO Pontuacao_anual (equipe, pontos, ano) VALUES
	('#E002', 500, 2023);
-- Pontua -- ** Alterar forma de pontuacao aqui depois
	--#C001
INSERT INTO Pontua (campeonato, equipe, pontos_pelo_camp) VALUES 
    ('#C001', '#E001', 300);

INSERT INTO Pontua (campeonato, equipe, pontos_pelo_camp) VALUES 
    ('#C001', '#E002', 200);
	--#C002
INSERT INTO Pontua (campeonato, equipe, pontos_pelo_camp) VALUES 
    ('#C002', '#E001', 200);

INSERT INTO Pontua (campeonato, equipe, pontos_pelo_camp) VALUES 
    ('#C002', '#E002', 300);
--


