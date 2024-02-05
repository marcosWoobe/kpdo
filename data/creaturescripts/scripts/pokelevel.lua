function onExp(cid, exp)



  

 

local function contagem(params)
if #getCreatureSummons(params.cid) == 1 then
lvpoke = pokes[getCreatureName(getCreatureSummons(params.cid)[1])] 
if lvpoke.level <= 16 then
niveldopoke = lvpoke.level/2 
elseif lvpoke.level <= 26 then
niveldopoke = lvpoke.level/1.9 
elseif lvpoke.level <= 36 then
niveldopoke = lvpoke.level/1.8
elseif lvpoke.level <= 56 then
niveldopoke = lvpoke.level/1.7
elseif lvpoke.level <= 76 then
niveldopoke = lvpoke.level/1.6
elseif lvpoke.level <= 86 then
niveldopoke = lvpoke.level/1.5
else
niveldopoke = lvpoke.level
end
      
local pokemon = getPlayerSlotItem(params.cid, 8)
local resultadofinal = exp
local atributo = getItemAttribute(pokemon.uid, "exp")
local acomulado = getItemAttribute(pokemon.uid, "exp2")
local nivel = getItemAttribute(pokemon.uid, "boost")
local calcx = 100*niveldopoke

local expmonster = resultadofinal
local somar = acomulado+expmonster
local sefoder = nivel+niveldopoke

local calc = sefoder*calcx

local exp9 = expmonster+atributo
local monstro = getCreatureSummons(params.cid)[1]
setPlayerStorageValue(params.cid, 98742,exp2)
local falta = calc-exp9
doItemSetAttribute(pokemon.uid, "exp", exp9)
doItemSetAttribute(pokemon.uid, "exp2", somar)
doSendAnimatedText(getCreaturePosition(monstro), ""..expmonster.."", 212)
setPokemon(cid, nivel,calc,exp9)
if 1 > falta then
local nivel2 = getItemAttribute(pokemon.uid, "boost")
for rocks = 1, 10000000 do
local acomulado = getItemAttribute(pokemon.uid, "exp2")
local calcx = 100*niveldopoke

local somar = acomulado
local nivel = getItemAttribute(pokemon.uid, "boost")
local sefoder = nivel+niveldopoke
local atributo = getItemAttribute(pokemon.uid, "exp")
local calc = sefoder*calcx

local exp9 = atributo

local falta = calc-exp9
if 1 > falta then
local falta2 = exp9-calc
local nomedopoke = getCreatureName(monstro)
local advanced = nivel+1
local descrilv = lvpoke.level+advanced
local description = "Contains a "..nomedopoke..", ST[+"..advanced.. "]=["..descrilv.."]."
local treinador = getPlayerName(params.cid)
doItemSetAttribute(pokemon.uid, "exp", falta2)
doItemSetAttribute(pokemon.uid, "boost", advanced)
doItemSetAttribute(pokemon.uid, "description", description)
setCreatureMaxHealth(getCreatureSummons(params.cid)[1], getCreatureMaxHealth(getCreatureSummons(params.cid)[1]) + pokes[getCreatureName(getCreatureSummons(params.cid)[1])].cons)
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