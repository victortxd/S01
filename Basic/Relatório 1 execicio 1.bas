10 input "Digite a primeira nota: "; nota1
20 input "Digite a segunda nota: "; nota2

30 media = (VAL(nota1) + VAL(nota2))

50 if media >= 60 then goto 200
60 if media <= 30 then goto 220


100 input "Digite a nota da NP3: "; nota3
110 novaMedia = (media + VAL(nota3)) / 2

120 if novaMedia >= 50 then goto 240

160 print "Reprovado na NP3"
170 end

200 print "Aprovado direto" 
210 end
220 print "Reprovado direto" 
230 end    
240 print "Aprovado pela NP3" 
250 end
260 print "Reprovado na NP3" 
300 end
