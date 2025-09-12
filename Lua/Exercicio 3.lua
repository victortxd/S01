OriginalArr = {}

io.write("Digite o numero de elementos do array: ")
n = tonumber(io.read())

for i = 1, n do
    io.write("Digite o elemento " .. i .. ": ")
    OriginalArr[i] = tonumber(io.read())
end

function PA(arr)
    local PA = {}
    for i = 1, n do
        if arr[i] % 2 == 0 then
            table.insert(PA, arr[i])
        end
    end
    return PA
end

PA = PA(OriginalArr)
for i = 1, #PA do
    print(PA[i])
end
