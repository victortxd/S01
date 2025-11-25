filho(hades, cronos).filho(hades, reia).filho(zeus, cronos).filho(zeus, reia).filho(reia, urano).filho(crono, urano).

dominio(hades, submundo).dominio(zeus, ceu).dominio(zeus, mar).

habita(hades, submundo).habita(zeus, olimpo).

divindade_olimpica(Deus) :-filho(Deus, cronos),(dominio(Deus, ceu) ; dominio(Deus, mar) ; dominio(Deus, submundo)).

irmaos_germanos(A, B) :-filho(A, X),filho(B, X),filho(A, Y),filho(B, Y),A \= B.

ancestral(A, D) :-filho(D, A).

ancestral(A, D) :-filho(D, Z),ancestral(A, Z).
