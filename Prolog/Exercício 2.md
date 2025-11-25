filho(ARES, CRONOS). filho(HEBE, CRONOS). filho(ILITIA, CRONOS). filho(HEFESTO, CRONOS).

dominio(ARES, GUERRA). dominio(ARES, CORAGEM).dominio(HEBE, JUVENTUDE). dominio(HEFESTO, FORJA).

habita(ARES, OLIMPO). habita(HEBE, OLIMPO).habita(HEFESTO, OFICINA).

divindade_olimpica(DEUS) :-filho(DEUS, CRONOS),( dominio(DEUS, GUERRA); dominio(DEUS, CORAGEM); dominio(DEUS, JUVENTUDE); dominio(DEUS, FORJA)).

deus_maior(Deus) :-dominio(Deus, D1), dominio(Deus, D2), D1 \= D2, habita(Deus, OLIMPO).

% Query: % ?- deus_maior(X).
