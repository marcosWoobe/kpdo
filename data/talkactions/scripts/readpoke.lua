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
---bykpdo
pokefotos = {
["Bulbasaur"] = {fotopoke = 7593},
["Ivysaur"] = {fotopoke = 7594},
["Venusaur"] = {fotopoke = 7595},
["Charmander"] = {fotopoke = 7596},
["Charmeleon"] = {fotopoke = 7597},
["Charizard"] = {fotopoke = 7598},
["Squirtle"] = {fotopoke = 7599},
["Wartortle"] = {fotopoke = 7600},
["Blastoise"] = {fotopoke = 7601},
}



function onSay(cid, words, param, channel) 
if exhaustion.get(cid, 5549990) then
return true
end

exhaustion.set(cid, 5549990, 0.5)


local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local equipado = getPlayerSlotItem(cid, 8)
local lifepoke = getItemAttribute(equipado.uid, "fine")
local lifetruepoke = 0
if lifepoke then
lifetruepoke = math.floor(lifepoke)
end
if #getCreatureSummons(cid) >= 1 then
local sumonado = getCreatureSummons(cid)[1]
local maxhealth = getCreatureMaxHealth(sumonado)/100
local health = getCreatureHealth(sumonado)/maxhealth
lifetruepoke = math.floor(health)
end


local pokepacket = "p#,"
if equipado.itemid >= 10 then
local check = getItemAttribute(equipado.uid, "nome")

if check then
local idfoto = fotos[check]
local pokefoto = 7746
if idfoto  then
pokefoto  = getItemSprite(idfoto.fotopoke)
end




pokepacket = pokepacket..pokefoto..","..check..","..lifetruepoke..","
end


end
local items = getItemsInContainerByIds(bp.uid, {'2652','2224','2541','2542','2227','189','191','2200','197','11213','11214','198','200','2222','2653','2220'}) 

			for _, uid in pairs(items) do
	local check = getItemAttribute(uid, "nome")
local lifepoke = getItemAttribute(uid, "fine")
local lifetruepoke = 0
if lifepoke then
lifetruepoke = math.floor(lifepoke)
end
local p
if check then
local idfoto = fotos[check]
local pokefoto = 7746
if idfoto  then
pokefoto  = getItemSprite(idfoto.fotopoke)
end


pokepacket = pokepacket..pokefoto..","..check..","..lifetruepoke..","
end
end
doPlayerSendCancel(cid,pokepacket)

return true
end