CREATE OR REPLACE TYPE equipe_tp AS OBJECT (
	id_equipe VARCHAR2(50),
	nome VARCHAR2(50),
	data_criacao TIMESTAMP
);

--NT: equipes_participantes (Campeonatos)
--VARRAY: nacionalidade (Residencia)
/

CREATE OR REPLACE TYPE residencia_tp AS OBJECT(
	cod_residencia_unificado VARCHAR2(50),
	pais_atual VARCHAR2(50),
	estado VARCHAR2(50),
	municipio VARCHAR2(50)
);


/

CREATE OR REPLACE TYPE jogador_tp AS OBJECT (
	id_jogador VARCHAR2(50),
	nome VARCHAR2(50),
	data_nascimento TIMESTAMP,
    	nacionalidade VARCHAR2(50),
    	cod_residencia_unificado VARCHAR2(50),
    	equipe_atual VARCHAR2(50)
);

/

CREATE OR REPLACE TYPE line_up_data_tp AS OBJECT(
	id_jogador VARCHAR2(50),
	ano TIMESTAMP,
	equipe_na_data VARCHAR2(50)
);

/

CREATE OR REPLACE TYPE campeonato_tp AS OBJECT(
	id_campeonato VARCHAR2(50),
    	nome VARCHAR2(50),
    	ano TIMESTAMP,
    	tipo VARCHAR2(50),
    	equipes_participantes participacao_equipes_campeonatos_tp
)
--NESTED TABLE equipes_paticipantes STORE AS camp_participantes_nt;


/

CREATE OR REPLACE TYPE participacao_equipes_campeonatos_tp AS OBJECT(
	id_equipe VARCHAR2(50),
	id_campeonato VARCHAR2(50),
	ranking NUMBER
);

-------
