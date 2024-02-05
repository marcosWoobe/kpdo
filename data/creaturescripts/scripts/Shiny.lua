
function onThink(cid, interval)


if getPlayerStorageValue(cid, 2145) == 1 then
return true
end
if getPlayerStorageValue(cid, 122546) == 1 then
return true
end

setPlayerStorageValue(cid, 2145,1)
local shiny = shinyscreate[getCreatureName(cid)]
if not shiny then
return true
end

local pegar = math.random(0, shiny.chance)
if pegar <= shinyrate then


doSendMagicEffect(getCreaturePosition(cid), 28)
local criado = doCreateMonster(shiny.nome, getCreaturePosition(cid))
doRemoveCreature(cid)
doSendMagicEffect(getCreaturePosition(criado), 29)
end


return True

end