os.execute("color a")
local materiais = {
	plank = 0,
	cloth = 0,
	leather = 0,
	steal = 0,
}

local turn = 1
local stillAsking = true

local function ask()
	local materialNome = ""
	if turn == 1 then
		materialNome = "plank"
	elseif turn == 2 then
		materialNome = "cloth"
	elseif turn == 3 then
		materialNome = "leather"
	elseif turn == 4 then
		materialNome = "steal"
	elseif turn == 5 then
		stillAsking = false
	end
	
	print("quantity of "..materialNome.." per item")
	local resposta1 = io.read()
	if resposta1 == "next" then
		turn = turn+1
		if turn == 5 then
			stillAsking = false
		end
		return
	end
	print("Item quantity")
	local resposta2 = tonumber(io.read())
	local quantidadeDeMaterialParaADD = tonumber(resposta1)*resposta2
	materiais[materialNome] = materiais[materialNome]+quantidadeDeMaterialParaADD

end
while stillAsking do
	os.execute("cls")
	ask()
end
for material, _ in pairs(materiais) do
	materiais[material] = math.ceil(materiais[material]*0.85)
	if materiais[material] >= 4 then
		materiais[material] = materiais[material]+1
	end
end

local finalMensage = string.format("total quantity of resources to craft all itens:\nPlank = %d\nCloth = %d\nLeather = %d\nSteal = %d"
,materiais.plank, materiais.cloth, materiais.leather, materiais.steal)
os.execute("cls")
print(finalMensage)
os.execute("pause")