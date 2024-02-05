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
function onSay(cid, words, param)
if #getCreatureSummons(cid) == 0  then
return true
end
if getPlayerStorageValue(cid,888) >= 1 then
return true
end
local pokeball = getPlayerSlotItem(cid, 8)
local pokenick = getItemAttribute(pokeball.uid, "nome")
local nicksummon = getCreatureName(getCreatureSummons(cid)[1])
if pokenick == "Eevee" then
return doPlayerSendCancel(cid, "Sorry this pokemon dont envolve for level;")

	end
local evoluctionto = evoluction[pokenick]
if not evoluctionto then
return doPlayerSendCancel(cid, "Sorry, this pokemon dont have evoluction!")
end 
local count = evoluctionto.count
local evo = evoluctionto.evolution
local levell = evoluctionto.level

local boost = getItemAttribute(pokeball.uid, "boost")
local needboost = pokes[pokenick]
local lvpokemon = boost+needboost.level
local evolevel = pokes[evo].level
local needadv = evolevel-needboost.level

if lvpokemon >= evolevel then



if getPlayerLevel(cid) < evolevel then
return doPlayerSendCancel(cid, "Sorry, you is level "..getPlayerLevel(cid).." don't have the required level to evolve this pokemon need ("..evolevel..").")
end
local owner = cid

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
local positxd = getThingPos(getCreatureSummons(cid)[1])
local d = getCreaturesInRange(positxd, 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/envol.wav")
end
end


doSendMagicEffect(positxd, 18)
if  fotos[sle] then
doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[sle].fotopoke)
end
doSendMagicEffect(getThingPos(cid), 173)
local oldpos = positxd
doRemoveCreature(getCreatureSummons(cid)[1])


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

doItemSetAttribute(pokeball.uid, "exp",0)
doItemSetAttribute(pokeball.uid, "exp2",0)
doItemSetAttribute(pokeball.uid, "boost",0)

local calcular = pokesteeee[evo] 


if calcular then
addStatics(calcular.st)
return TRUE
end

else
doPlayerSendCancel(cid, "Sorry This pokemon is Stage "..boost..",need a stage "..needadv.."  .")

end

return TRUE
end 