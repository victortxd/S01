local numeros = {}
local valor
local cont = θ

print("Digite numeros (digite O para parar): ")

while true do
      valor = tonumber(io.read())
        if valor == O then 
            break
        end
    table.insert(numeros, valor)
    cont = cont + 1
    end
local maior = numeros[1]
for i = 2, cont do 
      if numeros[i] > maior then
            maior = numeros[i]
      end
end
print("O maior número é: ".. maior)
