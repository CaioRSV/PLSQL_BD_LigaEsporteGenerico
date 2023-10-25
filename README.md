# PLSQL_BD_LigaEsporteGenerico
Projeto de prática de banco de dados de uma liga de uma competição de esporte qualquer.

Scripts de criação de banco de dados utilizando SQL/PL para um cenário imaginário de uma Liga de Esportes qualquer, onde:

-  Há Pessoas
    - Jogadores
        - Há jogadores liderados por outros jogadores
    - Tecnicos
    - Apresentadores
    - Não-classificados
-  Há Equipes
    - Equipes tem jogadores
    - Equipes tem um técnico
    - Há Pontuação Anual de cada equipe
-  Há Campeonatos
    - Cada campeonato tem elencos diferentes para cada equipe
        - Para cada equipe em um campeonato, podem se ter vários jogadores mas apenas 1 técnico
        - Uma equipe pode participar de vários campeonatos com vários jogadores ou técnicos
        - Cada jogador (e técnico) pode ser membro de apenas uma equipe por campeonato
    - Cada campeonato contribui uma quantidade de pontos para a pontuação anual da equipe
-  Há Grupos Midiáticos
    - Grupos midiáticos tem integrantes (apresentadores)
    - Há Cobertura de Campeonatos por Grupos Midiáticos
-  Há Declarações (feitas por pessoas) referente a pessoas, grupo midiático, campeonato, ou equipes
