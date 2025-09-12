print("Digite seu primeiro numero:" )
local num1 = tonumber(io.read())

print("Digite seu segundo numero: ")
local num2 = tonumber(io.read())
  
print("Digite um operador matemático: ")
local op = tonumber(io.read())
  
function calculadora(num1, num2, op)
        if op =="+" then
            print(num1 + num2)
        elseif op == "-" then
            print(num1 - num2)
        elseif op "*" then
            print(num1 * num2)
        elseif op =="/" then
            print(num1 / num2)
 end
end
