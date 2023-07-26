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
    campeonatos NUMBER,
    trofeus NUMBER,

    CONSTRAINT jogador_pk PRIMARY KEY (id_jogador),
    CONSTRAINT cod_residencia_unificado_fk FOREIGN KEY (cod_residencia_unificado) REFERENCES Residencia(cod_residencia_unificado),
    CONSTRAINT equipe_atual_fk FOREIGN KEY (equipe_atual) REFERENCES Equipe(id_equipe)
    
    );


CREATE TABLE Campeonato(
    id_campeonato NUMBER,
    nome VARCHAR2(50),
    ano TIMESTAMP NOT NULL,
    equipe_campea NUMBER,
    
    CONSTRAINT campeonato_pk PRIMARY KEY (id_campeonato),
    CONSTRAINT equipe_campea_fk FOREIGN KEY (equipe_campea) REFERENCES Equipe(id_equipe)

);

CREATE TABLE Campeonatos_Participados_Equipe(
    id_equipe NUMBER,
    id_campeonato NUMBER,

    CONSTRAINT campPart_pk PRIMARY KEY (id_equipe, id_campeonato),
    CONSTRAINT campPart_equipe_fk FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe),
    CONSTRAINT campPart_camp_fk FOREIGN KEY (id_campeonato) REFERENCES Campeonato(id_campeonato)
);