print("Digite seu primeiro nomero: ")
local a = tonumber(io.read())

print("Digite seu segundo numero: ")
local n = tonumber(io.read())

print("Digite o numero que voce deseja saber o multiplo: ")
local x = tonumber(io.read())

for i = a, n, 1 do 
  if i % x == 0 then
   print(i)

  end
end
