filho(hades, cronos). filho(hades, reia). filho(zeus, cronos). filho(zeus, reia).

dominio(hades, submundo). dominio(zeus, ceu).

habita(hades, submundo). habita(zeus, olimpo).

divindade_olimpica(Deus) :-filho(Deus, cronos),( dominio(Deus, ceu); dominio(Deus, submundo)).

irmaos_germanos(A, B) :-filho(A, Pai),filho(B, Pai),filho(A, Mae),filho(B, Mae), A \= B.

% Query % ?- irmaos_germanos(zeus, X).
