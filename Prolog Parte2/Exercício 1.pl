% Fatos: Disciplinas (materias, créditos, area)
disciplina(programacao, 8, fundamental).
disciplina(calculo, 10, matematica).
disciplina(estrutura_dados, 7, computacao).
disciplina(algoritmos, 4, computacao).
disciplina(banco_dados, 6, aplicacoes).
disciplina(redes, 5, aplicacoes).
disciplina(inteligencia_artificial, 8, computacao).
disciplina(compiladores, 5, computacao).
disciplina(teoria_grafos, 5, matematica).
disciplina(estatistica, 10, matematica).
disciplina(sistemas_operacionais, 10, computacao).
disciplina(projeto_integrador, 10, aplicacoes).

% Fatos: Pré-Requisitos (Disciplina_principal, pre_requisito)
prerequisito(estrutura_dados, programacao).
prerequisito(algoritmos, estrutura_dados).
prerequisito(banco_dados, programacao).
prerequisito(inteligencia_artificial, algoritmos).
prerequisito(inteligencia_artificial, calculo).
prerequisito(compiladores, algoritmos).
prerequisito(compiladores, estrutura_dados).
prerequisito(sistemas_operacionais, estrutura_dados).
prerequisito(teoria_grafos, calculo).
prerequisito(estatistica, calculo).
prerequisito(projeto_integrador, banco_dados).
prerequisito(projeto_integrador, sistemas_operacionais).

% Fatos: Conhecimento de Alunos (aluno, Disciplina_concluida)
concluiu(Arnold, programacao).
concluiu(Arnold, calculo).
concluiu(Arnold, estrutura_dados).
concluiu(Marques, estrutura_dados).
concluiu(Marques, calculo).
concluiu(Marques, programacao).
concluiu(Rodyney, redes).
concluiu(Rodyney, teoria_grafos).
concluiu(Rodyney, calculo).
concluiu(Thompson, estatistica).
concluiu(Thompson, teoria_grafos).
concluiu(Thompson, estrutura_dados).
concluiu(Sakura, algoritmos).
concluiu(Sakura, redes). 
concluiu(Sakura, banco_dados).

alto_impacto(D) :-
    Disciplina(D, Creditos, _),
    Creditos > 5,
    prerequisito(D1, D),
    prerequisito(D2, D),
    D1 \= D2.

% Query: % ?- Disciplina(D, 4, matematica), \+ prerequisito(_, D).
