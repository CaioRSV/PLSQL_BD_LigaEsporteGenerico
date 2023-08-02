CREATE TABLE Equipe (
    id_equipe VARCHAR2(50),
    nome VARCHAR2(50),
    data_criacao TIMESTAMP NOT NULL,
    campeonatos NUMBER,
    trofeus NUMBER,

    CONSTRAINT equipe_pk PRIMARY KEY (id_equipe)
    
    );

CREATE TABLE Residencia(
    cod_residencia_unificado VARCHAR2(50),
    pais_atual VARCHAR2(50),
    estado VARCHAR2(50),
    municipio VARCHAR2(50),

    CONSTRAINT residencia_pk PRIMARY KEY (cod_residencia_unificado)
    
    );

CREATE TABLE Jogador(
    id_jogador VARCHAR2(50),
	nome VARCHAR2(50),
    data_nascimento TIMESTAMP NOT NULL,
    nacionalidade VARCHAR2(50),
    cod_residencia_unificado VARCHAR2(50),
    equipe_atual VARCHAR2(50),
    campeonatos NUMBER,
    trofeus NUMBER,

    CONSTRAINT jogador_pk PRIMARY KEY (id_jogador),
    CONSTRAINT cod_residencia_unificado_fk FOREIGN KEY (cod_residencia_unificado) REFERENCES Residencia(cod_residencia_unificado),
    CONSTRAINT equipe_atual_fk FOREIGN KEY (equipe_atual) REFERENCES Equipe(id_equipe)
    
    );

CREATE TABLE Jogador_Em_Equipe_Data(
    id_jogador VARCHAR2(50),
    ano TIMESTAMP NOT NULL,
    equipe_na_data VARCHAR2(50),

    CONSTRAINT jogadorEquipeData_pk PRIMARY KEY (id_jogador, ano),
    CONSTRAINT jogadorEquipeData_jogador_fk FOREIGN KEY (id_jogador) REFERENCES Jogador(id_jogador),
    CONSTRAINT jogadorEquipeData_equipe_fk FOREIGN KEY (equipe_na_data) REFERENCES Equipe(id_equipe)
);


CREATE TABLE Campeonato(
    id_campeonato VARCHAR2(50),
    nome VARCHAR2(50),
    ano TIMESTAMP NOT NULL,
    tipo VARCHAR2(50),
    equipe_campea VARCHAR2(50),
    
    CONSTRAINT campeonato_pk PRIMARY KEY (id_campeonato),
    CONSTRAINT equipe_campea_fk FOREIGN KEY (equipe_campea) REFERENCES Equipe(id_equipe)

);

CREATE TABLE Campeonatos_Participados_Equipe(
    id_equipe VARCHAR2(50),
    id_campeonato VARCHAR2(50),
    ranking NUMBER,

    CONSTRAINT campPart_pk PRIMARY KEY (id_equipe, id_campeonato),
    CONSTRAINT campPart_equipe_fk FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe),
    CONSTRAINT campPart_camp_fk FOREIGN KEY (id_campeonato) REFERENCES Campeonato(id_campeonato)
);