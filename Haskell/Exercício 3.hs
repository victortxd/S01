data Banda = Banda { nome :: String, genero :: String, cache :: Double}
  deriving(Show)

data StatusEvento = Ativo | Encerrado |  Cancelado
  deriving(Show, Eq)

data Evento = Evento { listaDeBandas :: [Banda], status :: StatusEvento }
  deriving(Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
  | status evento == Cancelado = 0
  | otherwise = sum(map cache (listaDeBandas evento)) + taxaDeProducao
  where 
    taxaDeProducao = sum(map cache (listaDeBandas evento)) * 0.2

bandaAbertura :: Evento -> String
bandaAbertura (Evento bandas _)
  | null bandas = "Sem abertura"
  | otherwise = nome (head bandas)

bandaFechamento :: Evento -> String
bandaFechamento (Evento bandas _)
  | null bandas = "Sem fechamento"
  | otherwise = nome (last bandas)

evento1 = Evento [Banda "Skillet" "Rock" 20000, Banda "Queen" "Rock" 15000] Encerrado
evento2 = Evento [Banda "Ashes Remain" "Rock" 20000, Banda "Three Days Grace" "Rock" 25000] Ativo
evento3 = Evento [Banda "Linkin Park" "Rock" 30000, Banda "Slayer" "Metal" 30000] Cancelado

main :: IO ()
main = do
  putStrLn "\n Simulando Eventos "

  putStr "\nCusto total do evento 1: R$"
  print (custoTotalEvento evento1)
  putStrLn "Banda de abertura do evento 1:"
  print (bandaAbertura evento1)
  putStrLn "Banda de fechamento do evento 1:"
  print (bandaFechamento evento1)

  putStr "\nCusto total do evento 2: R$"
  print (custoTotalEvento evento2)
  putStrLn "Banda de abertura do evento 2:"
  print (bandaAbertura evento2)
  putStrLn "Banda de fechamento do evento 2:"
  print (bandaFechamento evento2)

  putStr "\nCusto total do evento 3: R$"
  print (custoTotalEvento evento3)
  putStrLn "Banda de abertura do evento 3:"
  print (bandaAbertura evento3)
  putStrLn "Banda de fechamento do evento 3:"
  
  print (bandaFechamento eventoC)
