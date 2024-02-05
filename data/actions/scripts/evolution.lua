--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
function Advancedpoke(cid,pokeball)


lvpoke = pokes[getCreatureName(getCreatureSummons(cid)[1])] 
--if lvpoke.level <= 16 then
--niveldopoke = lvpoke.level/2 
--elseif lvpoke.level <= 26 then
--niveldopoke = lvpoke.level/1.9 
--elseif lvpoke.level <= 36 then
--niveldopoke = lvpoke.level/1.8
--elseif lvpoke.level <= 56 then
--niveldopoke = lvpoke.level/1.7
--elseif lvpoke.level <= 76 then
--niveldopoke = lvpoke.level/1.6
--elseif lvpoke.level <= 86 then
--niveldopoke = lvpoke.level/1.5
--else
local niveldopoke = lvpoke.level
--end
      


local atributo = getItemAttribute(pokeball.uid, "exp")
local nivel = 0
local calcx = 100*niveldopoke
local sefoder = nivel+niveldopoke
local stages = getPokemonStage(nivel)
local calc = sefoder*calcx*stages
local exp = atributo
local monstro = getCreatureSummons(cid)[1]

local falta = calc-exp


if 1 > falta then
local nivel2 = getItemAttribute(pokeball.uid, "boost")
for rocks = 1, 10000000 do
local acomulado = getItemAttribute(pokeball.uid, "exp2")
local calcx = 100*niveldopoke

local somar = acomulado
local nivel = getItemAttribute(pokeball.uid, "boost")
local sefoder = nivel+niveldopoke
local atributo = getItemAttribute(pokeball.uid, "exp")
local stages = getPokemonStage(nivel)
local calc = sefoder*calcx*stages

local exp = atributo

local falta = calc-exp
if 1 > falta then
local falta2 = exp-calc
local nomedopoke = getItemAttribute(pokeball.uid, "nome")
local advanced = nivel+1
local descrilv = advanced
local candy = getItemAttribute(pokeball.uid, "candy")
local description = "Contains a "..nomedopoke..", ST[+"..advanced.. "]=["..descrilv.."]."
if candy then
descrilv = advanced+candy
description = "Contains a "..nomedopoke..", ST[+"..advanced.. "]+B[+"..candy.."]=["..descrilv.."]."
end
local treinador = getPlayerName(cid)
doItemSetAttribute(pokeball.uid, "exp", falta2)
doItemSetAttribute(pokeball.uid, "boost", advanced)
doItemSetAttribute(pokeball.uid, "description", description)
setCreatureMaxHealth(getCreatureSummons(cid)[1], getCreatureMaxHealth(getCreatureSummons(cid)[1]) + pokes[getCreatureName(getCreatureSummons(cid)[1])].cons)
doCreatureAddHealth(getCreatureSummons(cid)[1],getCreatureMaxHealth(getCreatureSummons(cid)[1]))



else
local advanced = nivel
setPokemon(cid, advanced,calc,falta)
 setCreatureMaxMana(cid,  getCreatureMaxHealth(getCreatureSummons(cid)[1]))
doPlayerAddMana(cid, -getCreatureMana(cid))
doPlayerAddMana(cid, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(getCreatureSummons(cid)[1], 3499,advanced)
local treinador = getPlayerName(cid)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)
doCreatureSay(monstro,  "trainer "..treinador.." ,i'm advanced from Stage "..nivel2.." to "..advanced..".", 1)
return true
end

end
	end
end
function isTmRemove(item,pokenick)
if isTM(item) then
tmcheck = TMFind(item)
if isMoveTm(pokenick,tmcheck) then
return TMClean(item)
else
return false
end
else
return false
end
end
local eevee = {'2277', '2279', '2283'}
function onUse(cid, item, frompos, item2, topos)
if not isMonster(item2.uid) then
return true
end
if not isPlayer(getCreatureMaster(item2.uid)) or getCreatureMaster(item2.uid) ~= cid then
doPlayerSendCancel(cid, "You can only use stones on pokemons you own.")
return true
end
if getPlayerStorageValue(cid,888) >= 1 then
return true
end
local pokeball = getPlayerSlotItem(cid, 8)
local pokenick = getItemAttribute(pokeball.uid, "nome")

for i,x in pairs(types) do
--if getPlayerSlotItem(cid, 7).itemid ~= fotos[getCreatureName(item2.uid)].fotopoke then
--return doPlayerSendCancel(cid, "Plase, keep your pokemon's ball at the right place during evolution!")
--end
if item.itemid == x.itemid then
if isPlayerSummon(cid, item2.uid) then
if table.find(x, getCreatureName(item2.uid)) then
if pokenick == "Eevee" then
local boost = getItemAttribute(pokeball.uid, "boost")
local lvpokemon = getPlayerLevel(cid)
	if item.itemid == 2279 then
		if lvpokemon < 55 then
return doPlayerSendCancel(cid, "Sorry, you pokemon is level "..lvpokemon.." don't have the required level to evolve this pokemon need 55.")
		end



addStatics(1135)
local jatem = getGlobalStorageValue(1133)
if jatem >= 1 then
setGlobalStorageValue(1133,jatem-1)
else
setGlobalStorageValue(1133,0)
end
		doItemSetAttribute(pokeball.uid, "fine", 100)
		doItemSetAttribute(pokeball.uid, "description", "Contains a Jolteon.")
                doItemSetAttribute(pokeball.uid, "nome", "Jolteon")
		doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..pokenick.." evolved into a Jolteon!")
		doSendMagicEffect(topos, 18)
		doTransformItem(getPlayerSlotItem(cid, 7).uid, 2511)
		doSendMagicEffect(getThingPos(cid), 173)
		local oldpos = getThingPos(item2.uid)
		doRemoveCreature(item2.uid)
		doSummonMonster(cid, "Jolteon")
		local pk = getCreatureSummons(cid)[1]
		registerCreatureEvent(pk, "DiePoke")
		registerCreatureEvent(pk, "Exp2")
		doTeleportThing(pk, oldpos, false)
		doCreatureSetLookDir(pk, 2)
		setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
		doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
		setPlayerStorageValue(cid, 2, 0)
		doPlayerRemoveItem(cid, item.itemid, 1)
doItemSetAttribute(pokeball.uid, "boost", 0)
doItemSetAttribute(pokeball.uid, "exp", (getItemAttribute(pokeball.uid, "exp")+getItemAttribute(pokeball.uid, "exp2"))/2)
Advancedpoke(cid,pokeball)		
	elseif item.itemid == 2277 then
		if lvpokemon < 55 then
return doPlayerSendCancel(cid, "Sorry, you pokemon is level "..lvpokemon.." don't have the required level to evolve this pokemon need 55.")
		end
addStatics(1134)
local jatem = getGlobalStorageValue(1133)
if jatem >= 1 then
setGlobalStorageValue(1133,jatem-1)
else
setGlobalStorageValue(1133,0)
end
		doItemSetAttribute(pokeball.uid, "fine", 100)
		doItemSetAttribute(pokeball.uid, "description", "Contains a Vaporeon.")
  doItemSetAttribute(pokeball.uid, "nome", "Vaporeon")
		doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..pokenick.." evolved into a Vaporeon!")
		doSendMagicEffect(topos, 18)
		doTransformItem(getPlayerSlotItem(cid, 7).uid, 2510)
		doSendMagicEffect(getThingPos(cid), 173)
		local oldpos = getThingPos(item2.uid)
		doRemoveCreature(item2.uid)
		doSummonMonster(cid, "Vaporeon")
		local pk = getCreatureSummons(cid)[1]
		registerCreatureEvent(pk, "DiePoke")
		registerCreatureEvent(pk, "Exp2")
		doTeleportThing(pk, oldpos, false)
		doCreatureSetLookDir(pk, 2)
		setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
		doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
		setPlayerStorageValue(cid, 2, 0)
		doPlayerRemoveItem(cid, item.itemid, 1)
doItemSetAttribute(pokeball.uid, "boost", 0)
doItemSetAttribute(pokeball.uid, "exp", (getItemAttribute(pokeball.uid, "exp")+getItemAttribute(pokeball.uid, "exp2"))/2)
Advancedpoke(cid,pokeball)
	elseif item.itemid == 2283 then
		if lvpokemon < 55 then
return doPlayerSendCancel(cid, "Sorry, you pokemon is level "..lvpokemon.." don't have the required level to evolve this pokemon need 55.")
		end

addStatics(1136)
local jatem = getGlobalStorageValue(1133)
if jatem >= 1 then
setGlobalStorageValue(1133,jatem-1)
else
setGlobalStorageValue(1133,0)
end
doItemSetAttribute(pokeball.uid, "fine", 100)
		doItemSetAttribute(pokeball.uid, "description", "Contains a Flareon.")
  doItemSetAttribute(pokeball.uid, "nome", "Flareon")
		doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..pokenick.." evolved into a Flareon!")
		doSendMagicEffect(topos, 18)
		doTransformItem(getPlayerSlotItem(cid, 7).uid, 2512)
		doSendMagicEffect(getThingPos(cid), 173)
		local oldpos = getThingPos(item2.uid)
		doRemoveCreature(item2.uid)
		doSummonMonster(cid, "Flareon")
		local pk = getCreatureSummons(cid)[1]
		registerCreatureEvent(pk, "DiePoke")
		registerCreatureEvent(pk, "Exp2")
		doTeleportThing(pk, oldpos, false)
		doCreatureSetLookDir(pk, 2)
		setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
		doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
		setPlayerStorageValue(cid, 2, 0)
		doPlayerRemoveItem(cid, item.itemid, 1)
doItemSetAttribute(pokeball.uid, "boost", 0)
doItemSetAttribute(pokeball.uid, "exp", (getItemAttribute(pokeball.uid, "exp")+getItemAttribute(pokeball.uid, "exp2"))/2)
Advancedpoke(cid,pokeball)
	end


	return true
	end
local evoluctionto = evoluction[pokenick]
if not evoluctionto then
return doPlayerSendCancel(cid, "Sorry, this pokemon dont have evoluction!")
end 
local count = evoluctionto.count
local stnid = evoluctionto.stoneid
local stnid2 = evoluctionto.stoneid2
local evo = evoluctionto.evolution
local levell = evoluctionto.level

local boost = getItemAttribute(pokeball.uid, "boost")
local needboost = pokes[pokenick]
local lvpokemon = boost+needboost.level
if stnid2 > 1 and getPlayerItemCount(cid, stnid2) < count then
return doPlayerSendCancel(cid, "You need at least one "..getItemNameById(stnid).." and one "..getItemNameById(stnid2).." to evolve this pokemon!")
end
if stnid2 > 1 and getPlayerItemCount(cid, stnid) < count then
return doPlayerSendCancel(cid, "You need at least one "..getItemNameById(stnid).." and one "..getItemNameById(stnid2).." to evolve this pokemon!")
end
if getPlayerItemCount(cid, stnid) < count then
return doPlayerSendCancel(cid, "You need at least "..count.." "..getItemNameById(stnid).."s to evolve this pokemon!")
end
if getPlayerLevel(cid) < levell then
return doPlayerSendCancel(cid, "Sorry, you is level "..getPlayerLevel(cid).." don't have the required level to evolve this pokemon need ("..levell..").")
end
local owner = getCreatureMaster(item2.uid)

local description = "Contains a "..evo.."."
local candy = getItemAttribute(pokeball.uid, "candy")
if candy then
description = "Contains a "..evo..", ST[+0]+B[+"..candy.."]=["..candy.."]."
end


local slo = evoluction[pokenick].maxh
local sle = evoluction[pokenick].evolution
local calcular = pokesteeee[pokenick] 
local antigonick = pokenick


if calcular then



local jatem = getGlobalStorageValue(calcular.st)
if jatem >= 1 then
setGlobalStorageValue(calcular.st,jatem-1)
else
setGlobalStorageValue(calcular.st,0)
end
end
local apelido = getItemAttribute(pokeball.uid, "apelido") 
local pokenick = evo
if apelido and apelido ~= getItemAttribute(pokeball.uid, "nome") then
pokenick = apelido
end
local nometrue = getItemAttribute(pokeball.uid, "nome") 
doItemSetAttribute(pokeball.uid, "apelido",pokenick)
doItemSetAttribute(pokeball.uid, "fine", 100)
doItemSetAttribute(pokeball.uid, "description", description)
doItemSetAttribute(pokeball.uid, "boost", 0)
  doItemSetAttribute(pokeball.uid, "nome", evo)
doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..nometrue.." evolved into a "..evo.."!")
local d = getCreaturesInRange(getThingPos(item2.uid), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/envol.wav")
end
end


doPlayerRemoveItem(cid, stnid, count)
doPlayerRemoveItem(cid, stnid2, count)
doSendMagicEffect(topos, 18)
if  fotos[sle] then
doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[sle].fotopoke)
end
doSendMagicEffect(getThingPos(cid), 173)
local oldpos = getThingPos(item2.uid)
doRemoveCreature(item2.uid)


local boost = getItemAttribute(pokeball.uid, "boost")
local candy = getItemAttribute(pokeball.uid, "candy")
local tagap = boost
if candy then
tagap = boost+candy
end

setNickPoke(cid,pokenick.."["..tagap.."]")


setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 31021, 0)
local nadinha = 0
if getPlayerSlotItem(cid, 8).itemid == 11215 then
nadinha = 1
else
doTransformItem(getPlayerSlotItem(cid, 8).uid, getPlayerSlotItem(cid, 8).itemid+1)
doTransformItem(getPlayerSlotItem(cid, 8).uid, getPlayerSlotItem(cid, 8).itemid-1)
end
doSummonMonster(cid, sle)
local pk = getCreatureSummons(cid)[1]
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
doTeleportThing(pk, oldpos, false)
doCreatureSetLookDir(pk, 2)
setCreatureMaxHealth(pk, slo)
doCreatureAddHealth(pk, slo)
setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
doCreatureAddHealth(pk, getCreatureMaxHealth(pk))

setPlayerStorageValue(cid, 2, 0)

      
if isTmRemove(pokeball.uid,getCreatureName(pk)) then
doPlayerSendTextMessage(cid, 27, "Pokemon Lost TM,because Have Move of TM")
end

doItemSetAttribute(pokeball.uid, "exp", (getItemAttribute(pokeball.uid, "exp")+getItemAttribute(pokeball.uid, "exp2"))/2)
Advancedpoke(cid,pokeball)
local calcular = pokesteeee[evo] 


if calcular then
addStatics(calcular.st)
end
break
else
return doPlayerSendCancel(cid, "Sorry, this is not the required stone to evolve this pokemon!")
end
end
end
end
return TRUE
end
