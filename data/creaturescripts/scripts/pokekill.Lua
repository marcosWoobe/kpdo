function onKill(cid, corpse)



        if not isSummon(corpse) and #getCreatureSummons(cid) == 1 then 
		
		
		

local pokestoragever = pokesteeee[getCreatureName(corpse)]
local somar = tonumber(getPlayerStorageValue(cid, 13256))

if not somar then
somar = 0
end
setPlayerStorageValue(cid, 13256, somar+1)         
   if pokestoragever then
local storagesx = pokestoragever.st+21000
local storagesz = pokestoragever.st+22000
local valor = tonumber(getPlayerStorageValue(cid, storagesx))
local valor2 = tonumber(getPlayerStorageValue(cid, storagesz))
if not valor then
valor = 0
end
if not valor2 then
valor2 = 1
end
if valor <= 0 then
valor = 0
end

if valor2 <= 0 then
valor2 = 1
end
setPlayerStorageValue(cid, storagesx, 1+valor)


if valor+1 >= pokestoragever.lv*valor2 then
fromup = valor2+1
setPlayerStorageValue(cid, storagesz, valor2+1) 
setPlayerStorageValue(cid, storagesx, 0)
local cash = getPlayerStorageValue(cid, 12352)
if cash <= 0 then
cash = 0
end

local mults = pokestoragever.lv*10*10
setPlayerStorageValue(cid, 12352,cash+valor+mults)

pontos = getPlayerStorageValue(cid, 12352)
doPlayerSendTextMessage(cid,22,"You Advanced in task ["..getCreatureName(corpse).."] from "..valor2.." to "..fromup..",your task points ("..pontos..").")
end
end            

 

local function contagem(params)
if #getCreatureSummons(params.cid) == 1 then


      
local pokemon = getPlayerSlotItem(params.cid, 8)
local nomedopoke = getItemAttribute(pokemon.uid, "nome")
local lvpoke = pokes[nomedopoke] 
local niveldopoke = lvpoke.level
local exp2 = getPlayerExperience(params.cid)
local formularexp = getPlayerStorageValue(params.cid, 98742)
local resultadofinal = exp2-formularexp  
local atributo = getItemAttribute(pokemon.uid, "exp")
local acomulado = getItemAttribute(pokemon.uid, "exp2")
local nivel = getItemAttribute(pokemon.uid, "boost")
local calcx = 100*niveldopoke
local expmonster = resultadofinal*getPokeExpStage(nivel)
local somar = acomulado+expmonster
local sefoder = nivel+niveldopoke
local stages = getPokemonStage(nivel)

local calc = sefoder*calcx*stages

local exp = expmonster+atributo
local monstro = getCreatureSummons(params.cid)[1]
setPlayerStorageValue(params.cid, 98742,exp2)
local falta = calc-exp
doItemSetAttribute(pokemon.uid, "exp", exp)
doItemSetAttribute(pokemon.uid, "exp2", somar)
doSendAnimatedText(getCreaturePosition(monstro), ""..expmonster.."", 212)
setPokemon(cid, nivel,calc,exp)
if 1 > falta then
local nivel2 = getItemAttribute(pokemon.uid, "boost")
for rocks = 1, 1000 do
local acomulado = getItemAttribute(pokemon.uid, "exp2")
local calcx = 100*niveldopoke

local somar = acomulado
local nivel = getItemAttribute(pokemon.uid, "boost")
local sefoder = nivel+niveldopoke
local atributo = getItemAttribute(pokemon.uid, "exp")
local stages = getPokemonStage(nivel)
local calc = sefoder*calcx*stages

local exp = atributo

local falta = calc-exp
if 1 > falta then
local falta2 = exp-calc
local nomedopoke =  getItemAttribute(pokemon.uid, "nome")
local advanced = nivel+1
local descrilv = advanced
local candy = getItemAttribute(pokemon.uid, "candy")
local description = "Contains a "..nomedopoke..", ST[+"..advanced.. "]=["..descrilv.."]."
if candy then
descrilv = advanced+candy
description = "Contains a "..nomedopoke..", ST[+"..advanced.. "]+B[+"..candy.."]=["..descrilv.."]."
end
local treinador = getPlayerName(params.cid)
doItemSetAttribute(pokemon.uid, "exp", falta2)
doItemSetAttribute(pokemon.uid, "boost", advanced)
doItemSetAttribute(pokemon.uid, "description", description)
setCreatureMaxHealth(getCreatureSummons(params.cid)[1], getCreatureMaxHealth(getCreatureSummons(params.cid)[1]) + pokes[nomedopoke].cons)
doCreatureAddHealth(getCreatureSummons(params.cid)[1],getCreatureMaxHealth(getCreatureSummons(params.cid)[1]))




else
local advanced = nivel
setPokemon(cid, advanced,calc,falta)
 setCreatureMaxMana(cid,  getCreatureMaxHealth(getCreatureSummons(params.cid)[1]))
doPlayerAddMana(cid, -getCreatureMana(params.cid))
doPlayerAddMana(cid, getCreatureMaxHealth(getCreatureSummons(params.cid)[1]))
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3499,advanced)
local treinador = getPlayerName(params.cid)
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 28)
doCreatureSay(monstro,  "trainer "..treinador.." ,i'm advanced from Stage "..nivel2.." to "..advanced..".", 1)
if isSound(params.cid) then
doPlayerSendCancel(params.cid,"sounds/233.wav")
end
return true
end

end
	end
			end
end


addEvent(contagem,1,  {cid = cid}) 
end		
return true      

end