


function onSay(cid, words, param)



if getCreatureName(cid) == "[kpdo]Cater" then

local string5 = string.explode(param, ",", 2) 

local pokemonx = pokes[string5[1]]
if not pokemonx then
return doPlayerSendTextMessage(cid,22,"CLone certo tipo Dragonite não dragonite.")
end

local pokemon = string5[1]
local pokemon2 = string5[3]
local clonenick = true
if not pokemon2  then
clonenick = false
end
local temp = pokemonx.level
local boost = string5[2]+pokemonx.level
local boostx = tonumber(string5[2])
if  not boostx then
return true
end
if  boostx >= 1000 then
return true
end
local health = 50000 -- Health do poke
local maxhealth = 50000  -- Maximo de health do poke
local description = "Contains a "..pokemon..", ST[+"..boostx.. "]=["..boost.."]."
local poke1 = "This is "..pokemon.."'s pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "exp2", "0")
local base = 100*pokemonx.level
for rocks = 1, boostx do
local kkk = temp+rocks
local memoria = getItemAttribute(item, "exp2")
local stages = getPokemonStage(rocks)
local exptotal = kkk*base*stages
local calcr = exptotal+memoria
doItemSetAttribute(item, "exp2", calcr)
end
local nomedaclonagem = getCreatureName(cid)
doItemSetAttribute(item, "fine", 100)
doItemSetAttribute(item, "nome", pokemon)
--if clonenick then
--doItemSetAttribute(item, "apelido", pokemon2)
--end
doItemSetAttribute(item, "description", description)
doItemSetAttribute(item, "boost", boostx)
doItemSetAttribute(item, "exp", "0")

if clonenick then
doItemSetAttribute(item, "catchby", pokemon2)
else
doItemSetAttribute(item, "catchby", getCreatureName(cid))
end

doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doItemSetAttribute(item, "cold","0")
doItemSetAttribute(item, "outifit","28")

local nome = getpoke(item)

doPlayerAddItemEx(cid, item, true)
if clonenick then
local attr = doTransformItem(item, 2220)
else
local attr = doTransformItem(item, 2220)
end


--local calcular = pokesteeee[nome] 


--if  calcular then
--local jatem = getGlobalStorageValue(calcular.st)+1
--setGlobalStorageValue(calcular.st,jatem)
--doPlayerSendTextMessage(cid,22,""..nome.."["..jatem.."]")
--end
doPlayerSendTextMessage(cid,22,"Você clonou um "..nome..".")

doSendMagicEffect(getCreaturePosition(cid), 28)

return true
end
return false
end
