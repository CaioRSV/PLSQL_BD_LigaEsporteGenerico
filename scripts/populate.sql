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
-- ...
