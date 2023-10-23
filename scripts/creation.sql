CREATE TABLE Residencia( 
    residencia_cod VARCHAR2(50), 
    pais VARCHAR2(50), 
    estado VARCHAR2(50), 
    municipio VARCHAR2(50), 
 
    CONSTRAINT Residencia_pk PRIMARY KEY (residencia_cod) 
);
--
CREATE TABLE Pessoa( 
    id_code VARCHAR2(50), 
    nome VARCHAR2(50), 
    email VARCHAR2(50), 
    cod_id_nacional VARCHAR2(50), 
    data_nascimento DATE, 
    status NUMBER, -- 1: Em atividade , 2: Em pausa, 3: Aposentado 
    residencia_cod VARCHAR2(50), 
 
    CONSTRAINT Pessoa_pk PRIMARY KEY (id_code), 
    CONSTRAINT Residencia_fk FOREIGN KEY (residencia_cod) REFERENCES Residencia (residencia_cod) 
);
--
CREATE TABLE Telefone( 
    telefone NUMBER, 
    pessoa VARCHAR(50), 
 
    CONSTRAINT Telefone_fk FOREIGN KEY (pessoa) REFERENCES Pessoa (id_code) 
);
--
CREATE TABLE Equipe( 
    id_equipe VARCHAR2(50), 
    nome VARCHAR2(50), 
    data_criacao DATE, 
 
    CONSTRAINT Equipe_pk PRIMARY KEY (id_equipe) 
);
--
CREATE TABLE Jogador( 
    id_code VARCHAR2(50) NOT NULL, 
    posicao_oficio VARCHAR2(50), 
    num_camisa NUMBER, 
    apelido VARCHAR2(50), 
    time_atual VARCHAR2(50), 
    liderado_por VARCHAR2(50), 
 
    CONSTRAINT Jogador_pk PRIMARY KEY (id_code), 
    CONSTRAINT Jogador_pessoa_fk FOREIGN KEY (id_code) REFERENCES Pessoa (id_code), 
    CONSTRAINT Jogador_equipe_fk FOREIGN KEY (time_atual) REFERENCES Equipe (id_equipe), 
    CONSTRAINT Jogador_liderado_fk FOREIGN KEY (liderado_por) REFERENCES Jogador (id_code) 
     
);
--
CREATE TABLE Tecnico( 
    id_code VARCHAR2(50), 
    estilo_tatico VARCHAR2(50), 
    equipe_atual VARCHAR2(50), 
     
	CONSTRAINT Tecnico_pk PRIMARY KEY (id_code), 
    CONSTRAINT Tecnico_pessoa_fk FOREIGN KEY (id_code) REFERENCES Pessoa (id_code), 
    CONSTRAINT Tecnico_equipe_fk FOREIGN KEY (equipe_atual) REFERENCES Equipe (id_equipe) 
);
--
CREATE TABLE Grupo_midiatico( 
    id_grupo_midiatico VARCHAR2(50), 
    nome VARCHAR2(50), 
    data_criacao DATE, 
 
    CONSTRAINT Grupo_mid_pk PRIMARY KEY (id_grupo_midiatico) 
);
--
CREATE TABLE Apresentador( 
    id_code VARCHAR2(50), 
    funcao_principal VARCHAR2(50), 
    grupo_midiatico VARCHAR2(50), 
 
    CONSTRAINT Apresentador_pk PRIMARY KEY (id_code), 
    CONSTRAINT Apresentador_pessoa_fk FOREIGN KEY (id_code) REFERENCES Pessoa (id_code), 
    CONSTRAINT Apresentador_gm_fk FOREIGN KEY (grupo_midiatico) REFERENCES Grupo_midiatico (id_grupo_midiatico) 
);
--
CREATE TABLE Campeonato( 
    id_camp VARCHAR2(50), 
    tipo_camp VARCHAR2(50), 
    nome_evento VARCHAR2(50), 
    data_inicio DATE, 
    data_fim DATE, 
 
    CONSTRAINT Campeonato_pk PRIMARY KEY (id_camp) 
);
--
CREATE TABLE Declaracao( 
    declarante VARCHAR2(50), 
    data_declaracao TIMESTAMP, 
    conteudo VARCHAR2(50), 
 
    CONSTRAINT Declaracao_comp_pk PRIMARY KEY (declarante, data_declaracao) 
);
--
CREATE TABLE Dec_Ref_Pessoa( 
    declarante VARCHAR2(50), 
    data_declaracao TIMESTAMP, 
    pessoa_ref VARCHAR2(50), 
 
    CONSTRAINT dec_ref_p_fk FOREIGN KEY (declarante, data_declaracao) REFERENCES Declaracao (declarante, data_declaracao), 
    CONSTRAINT pessoa_ref_fk FOREIGN KEY (pessoa_ref) REFERENCES Pessoa (id_code) 
);
--
CREATE TABLE Dec_Ref_Equipe( 
    declarante VARCHAR2(50), 
    data_declaracao TIMESTAMP, 
    equipe_ref VARCHAR2(50), 
 
    CONSTRAINT dec_ref_eq_fk FOREIGN KEY (declarante, data_declaracao) REFERENCES Declaracao (declarante, data_declaracao), 
    CONSTRAINT equipe_ref_fk FOREIGN KEY (equipe_ref) REFERENCES Equipe (id_equipe) 
);
--
CREATE TABLE Dec_Ref_Campeonato( 
    declarante VARCHAR2(50), 
    data_declaracao TIMESTAMP, 
    camp_ref VARCHAR2(50), 
 
     
    CONSTRAINT dec_ref_camp_fk FOREIGN KEY (declarante, data_declaracao) REFERENCES Declaracao (declarante, data_declaracao), 
    CONSTRAINT camp_ref_fk FOREIGN KEY (camp_ref) REFERENCES Campeonato (id_camp) 
);
--
CREATE TABLE Dec_Ref_GM( 
    declarante VARCHAR2(50), 
    data_declaracao TIMESTAMP, 
    gm_ref VARCHAR2(50), 
 
    CONSTRAINT dec_ref_gm_fk FOREIGN KEY (declarante, data_declaracao) REFERENCES Declaracao (declarante, data_declaracao), 
    CONSTRAINT gm_ref_fk FOREIGN KEY (gm_ref) REFERENCES Grupo_midiatico (id_grupo_midiatico) 
);
--
CREATE TABLE Cobre_camp( 
    campeonato VARCHAR2(50), 
    apresentador VARCHAR2(50), 
    grupo_mid VARCHAR2(50), 
     
    CONSTRAINT Cobre_camp_pk PRIMARY KEY (campeonato, apresentador) 
);
--
CREATE TABLE Participa_camp( 
    campeonato VARCHAR2(50), 
    equipe VARCHAR2(50), 
    jogador VARCHAR2(50), 
    tecnico VARCHAR2(50), 
    rank NUMBER, 
 
    CONSTRAINT part_camp_fk FOREIGN KEY (campeonato) REFERENCES Campeonato (id_camp), 
    CONSTRAINT part_eq_fk FOREIGN KEY (equipe) REFERENCES Equipe (id_equipe), 
    CONSTRAINT part_jog_fk FOREIGN KEY (jogador) REFERENCES Jogador (id_code), 
    CONSTRAINT part_tec_fk FOREIGN KEY (tecnico) REFERENCES Tecnico (id_code), 
    CONSTRAINT participa_camp_pk PRIMARY KEY (campeonato, jogador) 
)
--
CREATE TABLE Pontuacao_anual( 
    equipe VARCHAR2(50), 
    pontos NUMBER, 
    ano NUMBER, 
 
    CONSTRAINT pont_anual_eq_fk FOREIGN KEY (equipe) REFERENCES Equipe (id_equipe), 
    CONSTRAINT pont_anual_pk PRIMARY KEY (equipe, ano) 
);
--
CREATE TABLE Pontua_part_camp( 
	campeonato VARCHAR2(50), 
    equipe VARCHAR2(50), 
    rank NUMBER, 
    pontos_ganhos NUMBER, 
 
    CONSTRAINT ppc_camp_fk FOREIGN KEY (campeonato, equipe, rank) REFERENCES Participa_camp (campeonato, equipe, rank) 
     
);
