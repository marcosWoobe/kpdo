local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 





local
evoluc =
{
["Roselia"] = {evolution = "Roserade",count = 2,count2= 100,count3 =10,  itemid = 10596, itemid2 = 9606,itemid3 = 9538},
["Aipom"] = {evolution = "Ambipom",count = 3,count2= 30,count3 =20,  itemid = 10596, itemid2 = 9619,itemid3 = 9541},
["Misdreavus"] = {evolution = "Mismagius",count = 5,count2= 30,count3 =20,  itemid = 10596, itemid2 = 9663,itemid3 = 9535},
["Murkrow"] = {evolution = "Honchkrow",count = 5,count2= 30,count3 =20,  itemid = 10596, itemid2 = 9587,itemid3 = 9535},
["Sneasel"] = {evolution = "Weavile",count = 7,count2= 50,count3 =40,  itemid = 10596, itemid2 = 9643,itemid3 = 9535},
["Magneton"] = {evolution = "Magnezone",count = 3,count2= 50,count3 =20,  itemid = 10596, itemid2 = 9597,itemid3 = 9544},
["Lickitung"] = {evolution = "Lickilicky",count = 3,count2= 50,count3 =20,  itemid = 10596, itemid2 = 3965,itemid3 = 9541},
["Rhydon"] = {evolution = "Rhyperior",count = 5,count2= 30,count3 =20,  itemid = 10596, itemid2 = 9614,itemid3 = 9542},
["Tangela"] = {evolution = "Tangrowth",count = 5,count2= 50,count3 =20,  itemid = 10596, itemid2 = 8113,itemid3 = 9538},
["Electabuzz"] = {evolution = "Electivire",count = 5,count2= 70,count3 =30,  itemid = 10596, itemid2 = 8117,itemid3 = 9544},
["Magmar"] = {evolution = "Magmortar",count = 5,count2= 40,count3 =40,  itemid = 10596, itemid2 = 9652,itemid3 = 9670},
["Togetic"] = {evolution = "Togekiss",count = 5,count2= 50,count3 =30,  itemid = 10596, itemid2 = 9650,itemid3 = 9536},
["Yanma"] = {evolution = "Yanmega",count = 5,count2= 50,count3 =30,  itemid = 10596, itemid2 = 9582,itemid3 = 9534},
["Gligar"] = {evolution = "Gliscor",count = 7,count2= 60,count3 =30,  itemid = 10596, itemid2 = 9656,itemid3 = 9539},
["Piloswine"] = {evolution = "Mamoswine",count = 5,count2= 15,count3 =30,  itemid = 10596, itemid2 = 9675,itemid3 = 9540},
["Porygon2"] = {evolution = "PorygonZ",count = 5,count2= 50,count3 =20,  itemid = 10596, itemid2 = 8122,itemid3 = 9541},
["Nosepass"] = {evolution = "Probopass",count = 5,count2= 30,count3 =30,  itemid = 10596, itemid2 = 9612,itemid3 = 9651},
["Dusclops"] = {evolution = "Dusknoir",count = 5,count2= 30,count3 =20,  itemid = 10596, itemid2 = 9663,itemid3 = 9535},
["Bagon"] = {evolution = "Shelgon",count = 10,count2= 20,count3 =30,  itemid = 10596, itemid2 = 9594,itemid3 = 9536},
["Shelgon"] = {evolution = "Salamence",count = 10,count2= 50,count3 =50,  itemid = 10596, itemid2 = 9594,itemid3 = 9536},
}

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

function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid



if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "evoluction") then
local pokemondoido = getPlayerSlotItem(cid, 8)
if pokemondoido.itemid <= 10 then
return selfSay("Please Back You pokemon and move in feet sloot")
end
local candy = getItemAttribute(pokemondoido.uid, "nome")
local evoluir = evoluc[candy]
if not evoluir then
return selfSay("I dont evoluction this pokemon.")
end
selfSay("You wanna envolve "..candy.." to "..evoluir.evolution.."? for "..evoluir.count.."  "..getItemNameById(evoluir.itemid).." , "..evoluir.count2.." "..getItemNameById(evoluir.itemid2).." and  "..evoluir.count3.." "..getItemNameById(evoluir.itemid3).." ?")
talkState[talkUser] = 1


elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if #getCreatureSummons(cid) >= 1 then
return selfSay("Please Back You pokemon and move in feet sloot")
end
local pokemondoido = getPlayerSlotItem(cid, 8)
if pokemondoido.itemid <= 10 then
return selfSay("Please Back You pokemon and move in feet sloot")
end
local candy = getItemAttribute(pokemondoido.uid, "nome")
local evoluir = evoluc[candy]
if not evoluir then
return selfSay("I dont evoluction this pokemon.")
end


if getPlayerItemCount(cid, evoluir.itemid) < evoluir.count then
return selfSay("Sorry you dont have,you will need a "..evoluir.count.."  "..getItemNameById(evoluir.itemid).." , "..evoluir.count2.." "..getItemNameById(evoluir.itemid2).." and  "..evoluir.count3.." "..getItemNameById(evoluir.itemid3)..".")
end

if getPlayerItemCount(cid, evoluir.itemid2) < evoluir.count2 then
return selfSay("Sorry you dont have,you will need a "..evoluir.count.."  "..getItemNameById(evoluir.itemid).." , "..evoluir.count2.." "..getItemNameById(evoluir.itemid2).." and  "..evoluir.count3.." "..getItemNameById(evoluir.itemid3)..".")
end
if getPlayerItemCount(cid, evoluir.itemid3) < evoluir.count3 then
return selfSay("Sorry you dont have,you will need a "..evoluir.count.."  "..getItemNameById(evoluir.itemid).." , "..evoluir.count2.." "..getItemNameById(evoluir.itemid2).." and  "..evoluir.count3.." "..getItemNameById(evoluir.itemid3)..".")
end

doPlayerRemoveItem(cid, evoluir.itemid, evoluir.count)
doPlayerRemoveItem(cid, evoluir.itemid2, evoluir.count2)
doPlayerRemoveItem(cid, evoluir.itemid3, evoluir.count3)

if isTmRemove(pokemondoido.uid,candy) then
doPlayerSendTextMessage(cid, 27, "Pokemon Lost TM,because Have Move of TM")
end


local description = "Contains a "..evoluir.evolution.."."
local candye = getItemAttribute(pokemondoido.uid, "candy")
if candye then
description = "Contains a "..evoluir.evolution..", ST[+0]+B[+"..candye.."]=["..candye.."]."
end
doItemSetAttribute(pokemondoido.uid, "fine", 100)
doItemSetAttribute(pokemondoido.uid, "description", description)
doItemSetAttribute(pokemondoido.uid, "boost", 0)
doItemSetAttribute(pokemondoido.uid, "exp", "0")
doItemSetAttribute(pokemondoido.uid, "exp2", "0")
  doItemSetAttribute(pokemondoido.uid, "nome", evoluir.evolution)
  
local calcular = pokesteeee[evoluir.evolution] 


if calcular then
addStatics(calcular.st)
end

talkState[talkUser] = 0
doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..candy.." evolved into a "..evoluir.evolution.."!")
return selfSay("Nice guy take this !")



elseif msg == "no" and talkState[talkUser] >= 1 then 
selfSay("Then not", cid) 
talkState[talkUser] = 0 
npcHandler:releaseFocus(cid) 
end 
return TRUE 
end 

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())