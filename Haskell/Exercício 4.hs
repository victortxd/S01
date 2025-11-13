data Servico = Servico {nome :: String, tipo :: String, precoBase :: Double}
  deriving(Show)

data StatusServiso = EmAndamento | Concluido | Cancelado
  deriving(Show, Eq)

data Atendimento = Atendimento { servicos :: [Servico], status :: StatusServiso }
  deriving(Show)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual  servs 
 | length servs > 3 = total + bonus
 | total > 500 = total - desconto
 | otherwise = total
 where
  total = sum (map precoBase servs)
  bonus = 0.25 * total
  desconto = 0.1 * total

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servs stats)
 | stats == Cancelado = 0.0
 | otherwise = bonusEspiritual servs

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento servs _) =  nome (head servs)  ++ " - " ++ tipo (head servs)

Atendimento1 = Atendimento [Servico "Espuma" "Banho" 100, Servico "Massagem" "acupuntura" 150, Servico "Aromaterapia" "Banho" 200] EmAndamento
Atendimento2 = Atendimento [Servico "Aromaterapia" "Banho" 200, Servico "Massagem" "acupuntura" 150, Servico "Aromaterapia" "Banho" 200, Servico "Espuma" "Banho" 100] Concluido
Atendimento3 = Atendimento [Servico "Massagem" "acupuntura" 150, Servico "Espuma" "Banho" 100, Servico "Aromaterapia" "Banho" 200, Servico "Aromaterapia" "Banho" 200] Cancelado

main :: IO ()
main = do
  putStrLn "\n Simulando Atendimentos "

  putStrLn "\nAtendimento 1:  "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico Atendimento1)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento Atendimento1)

  putStrLn "\nAtendimento 2:  "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico Atendimento2)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento Atendimento2)

  putStrLn "\nAtendimento 3:  "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico Atendimento3)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento Atendimento3)



  
