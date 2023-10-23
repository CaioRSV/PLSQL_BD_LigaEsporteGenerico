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
    id_code VARCHAR2(50),
    posicao_oficio VARCHAR2(50),
    num_camisa NUMBER,
    apelido VARCHAR2(50),
    time_atual VARCHAR2(50),
    lidera VARCHAR2(50),

    CONSTRAINT Jogador_pessoa_fk FOREIGN KEY (id_code) REFERENCES Pessoa (id_code),
    CONSTRAINT Jogador_equipe_fk FOREIGN KEY (time_atual) REFERENCES Equipe (id_equipe)
    CONSTRAINT Jogador_lideranca_fk FOREIGN KEY (lidera) REFERENCES Jogador (id_code),
);
--
CREATE TABLE Tecnico(
    id_code VARCHAR2(50),
    estilo_tatico VARCHAR2(50),
    equipe_atual VARCHAR2(50),

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

    CONSTRAINT Apresentador_gm_fk FOREIGN KEY (grupo_midiatico) REFERENCES Grupo_midiatico (id_grupo_midiatico)
);
--
CREATE TABLE Campeonato(
    id_camp VARCHAR2(50),
    tipo_camp VARCHAR2(50),
    nome_evento VARCHAR2(50),
    data_inicio DATE,
    data_fim DATE
);
--

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
    CONSTRAINT pessoa_ref_fk FOREIGN KEY (pessoa_ref) REFERENCES Pessoa (pessoa_ref)
);

--
CREATE TABLE Dec_Ref_Equipe(
    declarante VARCHAR2(50),
    data_declaracao TIMESTAMP,
    equipe_ref VARCHAR2(50),

    CONSTRAINT dec_ref_p_fk FOREIGN KEY (declarante, data_declaracao) REFERENCES Declaracao (declarante, data_declaracao),
    CONSTRAINT equipe_ref_fk FOREIGN KEY (equipe_ref) REFERENCES Equipe (equipe_ref)
);

--
CREATE TABLE Dec_Ref_Campeonato(

);
