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

    CONSTRAINT Jogador_pessoa_fk FOREIGN KEY (id_code) REFERENCES Pessoa (id_code),
    CONSTRAINT Jogador_equipe_fk FOREIGN KEY (time_atual) REFERENCES Equipe (id_equipe)
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
