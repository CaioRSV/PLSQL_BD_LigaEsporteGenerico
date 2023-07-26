CREATE TABLE Equipe (
    id_equipe NUMBER,
    nome VARCHAR2(50),
    data_criacao TIMESTAMP NOT NULL,
    campeonatos NUMBER,
    trofeus NUMBER,

    CONSTRAINT equipe_pk PRIMARY KEY (id_equipe)
    
    );

CREATE TABLE Residencia(
    cod_residencia_unificado NUMBER,
    pais_atual VARCHAR2(50),
    estado VARCHAR2(50),
    municipio VARCHAR2(50),

    CONSTRAINT residencia_pk PRIMARY KEY (cod_residencia_unificado)
    
    );

CREATE TABLE Jogador(
    id_jogador NUMBER,
	nome VARCHAR2(50),
    idade NUMBER,
    nacionalidade VARCHAR2(50),
    cod_residencia_unificado NUMBER,
    equipe_atual NUMBER,

    CONSTRAINT jogador_pk PRIMARY KEY (id_jogador),
    CONSTRAINT cod_residencia_unificado_fk FOREIGN KEY (cod_residencia_unificado) REFERENCES Residencia(cod_residencia_unificado),
    CONSTRAINT equipe_atual_fk FOREIGN KEY (equipe_atual) REFERENCES Equipe(id_equipe)
    
    );