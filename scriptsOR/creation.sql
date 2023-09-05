CREATE OR REPLACE TYPE equipe_tp AS OBJECT (
	id_equipe VARCHAR2(50),
	nome VARCHAR2(50),
	data_criacao TIMESTAMP

    MEMBER PROCEDURE dados_equipe (SELF equipe_tp)
); 

/

CREATE OR REPLACE TYPE BODY equipe_tp AS
    MEMBER PROCEDURE dados_equipe (SELF equipe_tp) IS
        BEGIN
            DBMS_OUTPUT.PUT_LINE('---');
            DBMS_OUTPUT.PUT_LINE('ID da equipe no sistema: '||SELF.id_equipe);
            DBMS_OUTPUT.PUT_LINE('Nome da equipe: '||SELF.nome);
            DBMS_OUTPUT.PUT_LINE('Data de criação da equipe: '||SELF.data_criacao);
            DBMS_OUTPUT.PUT_LINE('---');
        END;
END;

--NT: equipes_participantes (Campeonatos)
--VARRAY: nacionalidade (Jogador)
/

CREATE OR REPLACE TYPE residencia_tp AS OBJECT(
	cod_residencia_unificado VARCHAR2(50),
	pais_atual VARCHAR2(50),
	estado VARCHAR2(50),
	municipio VARCHAR2(50),

    CONSTRUCTOR FUNCTION residencia_tp(
        cod_residencia_unificado VARCHAR2,
        pais_atual VARCHAR2,
        estado VARCHAR2,
        municipio VARCHAR2
    ) RETURN SELF as RESULT
);

/

CREATE OR REPLACE TYPE BODY residencia_tp AS
    CONSTRUCTOR FUNCTION residencia_tp(
        cod_residencia_unificado VARCHAR2,
        pais_atual VARCHAR2,
        estado VARCHAR2,
        municipio VARCHAR2
    ) RETURN SELF
    IS 
    BEGIN
        SELF.cod_residencia_unificado := cod_residencia_unificado;
        SELF.pais_atual := pais_atual;
        SELF.estado := estado;
        SELF.municipio := municipio;
        RETURN SELF;

    END;
END;

/

CREATE OR REPLACE TYPE nacionalidade_tp AS OBJECT(
    nacionalidade VARCHAR2(50)
);

/
CREATE OR REPLACE TYPE varray_nacionalidade AS VARRAY(3) OF nacionalidade_tp;

/
CREATE OR REPLACE TYPE jogador_tp AS OBJECT (
	id_jogador VARCHAR2(50),
	nome VARCHAR2(50),
	data_nascimento TIMESTAMP,
    nacionalidade varray_nacionalidade,
    cod_residencia_unificado VARCHAR2(50),
    equipe_atual VARCHAR2(50),
    numero_camisa VARCHAR2(50),
    lidera_jogadores REF jogador_tp,

    equipe REF equipe_tp,
    residencia REF residencia_tp,


    MEMBER FUNCTION mostrar_idade RETURN NUMBER,
    MEMBER PROCEDURE info_jogador(SELF jogador_tp), -- Talvez fizesse mais sentido como uma função
    FINAL MEMBER FUNCTION mostrar_numero_camisa RETURN VARCHAR2--,
    -- MAP MEMBER FUNCTION mostrar_nacionalidades RETURN VARCHAR2
) NOT FINAL;

-- lidera_jogadores SCOPE IS Jogador,

/

CREATE OR REPLACE TYPE BODY jogador_tp AS
    MEMBER FUNCTION mostrar_idade IS
        anos_passados NUMBER;
            BEGIN
                anos_passados := TRUNC(SYSDATE) - TRUNC(data_nascimento);
                RETURN anos_passados;
            END;

    MEMBER PROCEDURE info_jogador (SELF jogador_tp) IS
        BEGIN
            DBMS_OUTPUT.PUT_LINE('---');
            DBMS_OUTPUT.PUT_LINE('Nome: ' || SELF.nome);
            DBMS_OUTPUT.PUT_LINE('ID Equipe Atual: ' || SELF.equipe_atual);
            DBMS_OUTPUT.PUT_LINE('---');
        END;

    MEMBER FUNCTION mostrar_numero_camisa IS
        numCamisa VARCHAR2;
            BEGIN
                numCamisa := SELF.numero_camisa;
                RETURN numCamisa;

            END;

    -- MAP MEMBER FUNCTION mostrar_nacionalidade IS
    --     stringResult VARCHAR2;
    --         BEGIN
    --                 -- Insert code here
    --             FOR i IN 1..self.nacionalidade.COUNT LOOP
    --                 -- Concatenate each nacionalidade with a comma
    --                 stringResult := stringResult || self.nacionalidade(i).nacionalidade;
                    
    --                 -- Add a comma and space unless it's the last element
    --                 IF i < self.nacionalidade.COUNT THEN
    --                     stringResult := stringResult || ', ';
    --                 END IF;
    --             END LOOP;

    --             RETURN stringResult;
    --         END;
    
END;

/

CREATE OR REPLACE TYPE tecnico_tp UNDER jogador_tp (
    estilo_tatico VARCHAR2(50),

    OVERRIDING MEMBER PROCEDURE info_jogador (SELF tecnico_tp)
);


/

CREATE OR REPLACE TYPE line_up_data_tp AS OBJECT(
	id_jogador VARCHAR2(50),
	ano TIMESTAMP,
    capitaoBool NUMBER,
	equipe_na_data VARCHAR2(50)
);

/

CREATE OR REPLACE TYPE participacao_equipes_campeonato_tp AS OBJECT(
	id_equipe VARCHAR2(50),
	id_campeonato VARCHAR2(50),
	ranking NUMBER
);


/
CREATE OR REPLACE TYPE participacao_equipes_campeonatos_nt AS TABLE OF participacao_equipes_campeonato_tp;

/

CREATE OR REPLACE TYPE campeonato_tp AS OBJECT(
	id_campeonato VARCHAR2(50),
    nome VARCHAR2(50),
    ano TIMESTAMP,
    tipo NUMBER,
    equipes_participantes participacao_equipes_campeonatos_nt
);

ALTER TYPE campeonato_tp ADD ATTRIBUTE (premios_eventoDoAno_nacional NUMBER(1)) CASCADE;
ALTER TYPE campeonato_tp ADD ATTRIBUTE (premios_eventoDoAno_mundial NUMBER(1)) CASCADE;

--NESTED TABLE equipes_participantes STORE AS camp_participantes_nt;

/
-------
CREATE TABLE Equipe OF equipe_tp(
	id_equipe NOT NULL,
	nome NOT NULL,
	data_criacao NOT NULL,

	CONSTRAINT equipe_pk PRIMARY KEY (id_equipe)
)


/

CREATE TABLE Residencia OF residencia_tp(
	cod_residencia_unificado NOT NULL,
	pais_atual NOT NULL,
	estado NOT NULL,
	municipio NOT NULL
);

/

CREATE TABLE Jogador OF jogador_tp(
	id_jogador NOT NULL,
	nome NOT NULL,
	data_nascimento NOT NULL,
    cod_residencia_unificado NOT NULL,
    equipe_atual NOT NULL,

    equipe WITH ROWID REFERENCES Equipe,
    residencia WITH ROWID REFERENCES Residencia
);

/

CREATE TABLE Campeonato OF campeonato_tp(
	id_campeonato NOT NULL,
	nome NOT NULL,
	ano NOT NULL,
	tipo NOT NULL,

	CONSTRAINT campeonato_pk PRIMARY KEY (id_campeonato)

)NESTED TABLE equipes_participantes STORE AS camp_participantes_nt;
