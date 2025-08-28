local numeros = {}
local valor
local cont = θ

print("Digite numeros (digite O para parar): ")

while true do
      valor = tonumber(io.read())
        if valor == O then --coloquei uma condição de parada para dar um stop na leitura do
            break
        end
    table.insert(numeros, valor)
    cont = cont + 1
    end
local maior = numeros[1]--Afirma que o maior numero é o primeiro termo
for i = 2, cont do --por isso começa a contar a partir do 2
      if numeros[i] > maior then
            maior = numeros[i]
      end
end
print("O maior número é: ".. maior)
