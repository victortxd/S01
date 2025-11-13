data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }
  deriving(Show)

data StatusPedido = Aberto | Entregue | Cancelado
  deriving(Show, Eq)

data Pedido = Pedido { listaBebidas :: [Bebida], status :: StatusPedido }
  deriving(Show)

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido lB stats)
  | stats /= Cancelado = sum(map preco lB) + 5.0
  | otherwise = 0.0

primeiraBebida :: Pedido -> String
primeiraBebida pedido = 
  case listaBebidas pedido of
    - -> "Nenhuma bebida no pedido"
    (bebida:_) -> nome bebida


bebida1 = Bebida "hobby" "Café" 12.0
bebida2 = Bebida "boot" "Chá" 10.0
bebida3 = Bebida "juice" "Suco" 8.0

compra1 = Pedido [bebida1, bebida3] Entregue
comprab = Pedido [bebida2] Cancelado
comprac = Pedido [bebida1, bebida2, bebida3] Aberto
comprad = Pedido - Cancelado

main :: IO ()
main = do 
  putStrLn "\n Simulação de Pedidos"

  putStr "Compra a: Valor total = R$"
  print (valorTotalPedido compra1)

  putStr "Compra b: Valor total = R$"
  print (valorTotalPedido compra2)

  putStr "Compra c: Valor total = R$"
  print (valorTotalPedido compra3)

  putStr "Compra d: Valor total = R$"
  print (valorTotalPedido compra4)

  putStrLn "\nPrimeira bebida da compra a: "
  putStrLn (primeiraBebida compra1)

  putStrLn "\nPrimeira bebida da compra 4: "
  putStrLn (primeiraBebida compra4)
