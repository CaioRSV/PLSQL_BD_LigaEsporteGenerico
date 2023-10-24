-- Residencia
--INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES 
INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES ('#R001', 'Brasil', 'Pernambuco', 'Recife');
INSERT INTO Residencia (residencia_cod, pais, estado, municipio) VALUES ('#R002', 'Brasil', 'Pernambuco', 'Vitória de Sto. Antão');

-- Pessoa
--INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) VALUES
INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P001', 'João Pedro', 'jp@sports.com', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 1, '#R001');

INSERT INTO Pessoa (id_code, nome, email, cod_id_nacional, data_nascimento, status, residencia_cod) 
    VALUES ('#P001', 'Zero balo', 'zb@sports.com', TO_DATE('2002-01-01', 'YYYY-MM-DD'), 1, '#R002');

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
-- ...
