        10 numero = int(rnd * 101)
        20 print "Tente adivinhar o numero de 0 a 100!"
        
        30 input "Digite seu palpite: "; palpite

        50 if palpite >= 0 and palpite <= 100 then goto 70 else print "Palpite invalido! Digite um numero entre 0 e 100"
        60 goto 30
        70 print "palpite valido"
        170 if palpite < numero then goto 200
        180 if palpite > numero then goto 300
        190 if palpite = numero then goto 400

        200 print "O numero correto e MAIOR!" 
        250 goto 30
        300 print "O numero correto e MENOR!" 
        350 goto 30   
        400 print "Parabens! Voce acertou o numero!"
        500 end
