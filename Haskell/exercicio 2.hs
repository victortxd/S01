data Item = Item { nome :: String, categoria :: String, preco :: Double }
  deriving(Show)

data StatusCompra = Aberto | Fechado
  deriving(Show, Eq)

data CompraZelda = CompraZelda { itens :: [Item], status :: StatusCompra }
  deriving(Show)

precoItem :: Item -> Double
precoItem (Item _ _ p) = p

calcularSubTotal :: [Item] -> Double
calcularSubTotal itensList = sum (map precoItem itensList)

calcularDesconto :: [Item] -> Double
calcularDesconto itensList 
  | calcularSubTotal itensList > 200 = calcularSubTotal itensList * 0.1
  | otherwise = 0

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda itensList stats)
  | stats == Fechado = 0.0
  | total < 200 = total + 15.0
  | otherwise = total
  where
    total = calcularSubTotal itensList - calcularDesconto itensList

listarItens :: CompraZelda -> [String]
listarItens (CompraZelda itensList _) = map nome itensList

itemE = Item "Capa" "Equipamento" 100.0
itemA = Item "Glave" "Arma" 150.0
itemP = Item "Magic" "Poção" 20.0

compra1 = CompraZelda [itemE, itemA] Aberto
compra2 = CompraZelda [itemA, itemP, itemP, itemP] Aberto
compra3 = CompraZelda [itemA] Fechado
compra4 = CompraZelda [] Aberto

main :: IO ()
main = do
  putStrLn "\n Exemplos de Compras \n"

  putStr "Compra 1: "
  putStr "Itens comprados: "
  print (listarItens compra1)
  putStr "Valor total:  "
  print (valorFinal compra1)
  putStrLn "\n"

  putStr "Compra 2: "
  putStr "Itens comprados: "
  print (listarItens compra2)
  putStr "Valor total:   "
  print (valorFinal compra2)
  putStrLn "\n"
  
  putStr "Compra 3: "
  putStr "Itens comprados: "
  print (listarItens compra3)
  putStr "Valor total:   "
  print (valorFinal compra3)
  putStrLn "\n"
  
  putStr "Compra 4: "
  putStr "Itens comprados: "
  print (listarItens compra4)
  putStr "Valor total:   "
  print (valorFinal compra4)
  putStrLn "\n"  
