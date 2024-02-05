





function onKill(cid, corpse)

if getPlayerStorageValue(cid, 4555) == 1 then



local player = getCreatureMaster(corpse)
local spd = getCreatureBaseSpeed(cid)
doChangeSpeed(cid, -spd)
setPlayerStorageValue(cid, 8, 1)

local npc = getPlayerStorageValue(player, 9999)
local posx = getPlayerStorageValue(player, 4982)
local posy = getPlayerStorageValue(player, 4983)
local posz = getPlayerStorageValue(player, 4984)

local pos = getCreaturePosition(player)
local xnpc = getPlayerStorageValue(npc, 4982)
local ynpc = getPlayerStorageValue(npc, 4983)
local znpc = getPlayerStorageValue(npc, 4984)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy
if getPlayerStorageValue(player, 8334) >= 1 then


	pos.stackpos = 0
	
	pos.z = znpc
	pos.x = xnpc
	pos.y = ynpc
	end

if getPlayerStorageValue(player, 8888) >= 1 then
doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
local cont = getPlayerStorageValue(player, 4578)
local numeromonstro = getPlayerStorageValue(player, 7787)
if getPlayerStorageValue(player, 8333) >= numeromonstro then
local npc = getPlayerStorageValue(player, 9999)
local posx = getPlayerStorageValue(player, 4982)
local posy = getPlayerStorageValue(player, 4983)
local posz = getPlayerStorageValue(player, 4984)
local pos = getCreaturePosition(player)
local xnpc = getPlayerStorageValue(npc, 4982)
local ynpc = getPlayerStorageValue(npc, 4983)
local znpc = getPlayerStorageValue(npc, 4984)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy
if getPlayerStorageValue(player, 8334) >= 1 then


	pos.stackpos = 0
	
	pos.z = znpc
	pos.x = xnpc
	pos.y = ynpc
	end
local pos2 = getCreaturePosition(player)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(player) >= 1 then
doTeleportThing(getCreatureSummons(player)[1], pos2)
end
local npcnome = getPlayerStorageValue(player, 6578)
if npcnome == "Lorelei" then
doTeleportThing(npc, {x= 538,y= 997,z= 3})
end
if getPlayerStorageValue(player, 8334) <= 0 then
doTeleportThing(npc, pos)
end
doTeleportThing(player, pos2)

setPlayerStorageValue(player, 9999, 0)
setPlayerStorageValue(player, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(player, 4578, 0)
setPlayerStorageValue(player, 8333, 0)
setPlayerStorageValue(player, 8334, 0)
setPlayerStorageValue(player, 6445, 0)
setPlayerStorageValue(player, 19987,0)

local nome = getCreatureName(player) 
local criatura = getPlayerStorageValue(player, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
if getPlayerGroupId(player) <= 9 then
setPlayerGroupId(player, 1)
end

doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
return True
end
local function gymback(params)
if getPlayerStorageValue(player, 6445) >= 1 then

local npc = getPlayerStorageValue(player, 9999)
local posx = getPlayerStorageValue(player, 4982)
local posy = getPlayerStorageValue(player, 4983)
local posz = getPlayerStorageValue(player, 4984)
local pos = getCreaturePosition(player)
local xnpc = getPlayerStorageValue(npc, 4982)
local ynpc = getPlayerStorageValue(npc, 4983)
local znpc = getPlayerStorageValue(npc, 4984)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy
if getPlayerStorageValue(player, 8334) >= 1 then


	pos.stackpos = 0
	
	pos.z = znpc
	pos.x = xnpc
	pos.y = ynpc
	end

local pos2 = getCreaturePosition(player)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(player) >= 1 then
doTeleportThing(getCreatureSummons(player)[1], pos2)
end
if getPlayerStorageValue(player, 8334) <= 0 then
doTeleportThing(npc, pos)
end
local npcnome = getPlayerStorageValue(player, 6578)
if npcnome == "Lorelei" then
doTeleportThing(npc, {x= 538,y= 997,z= 3})
end
doTeleportThing(player, pos2)
if getPlayerGroupId(player) <= 9 then
setPlayerGroupId(player, 1)
end
setPlayerStorageValue(player, 9999, 0)
setPlayerStorageValue(player, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(player, 4578, 0)
setPlayerStorageValue(player, 8333, 0)
setPlayerStorageValue(player, 8334, 0)
setPlayerStorageValue(player, 19987,0)
local nome = getCreatureName(player) 
local criatura = getPlayerStorageValue(player, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
--doCreatureSetNoMove(player, 0)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
end
end

setPlayerStorageValue(player, 6445, 1)
doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose battle")

local function ginasio(params)
if isPlayer(params.player) then
if getPlayerStorageValue(params.player, 6445) >= 1 then
if params.count == 1 then
doPlayerSendTextMessage(params.player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose battle")
addEvent(gymback,1000, {player = params.player})
return true
end
doPlayerSendTextMessage(params.player, MESSAGE_STATUS_CONSOLE_BLUE, "You have "..params.count.." seconds to go you pokemon or lose battle")
addEvent(ginasio,1000, {player = params.player,count = params.count-1})
end
else



setPlayerStorageValue(npc, 5000, 0)
doSendMagicEffect(getCreaturePosition(cid), 10)
doRemoveCreature(cid)
if isInArray({"Bruno","Agatha","Lance","Ash"}, getCreatureName(npc)) then
return true
end
doTeleportThing(npc, pos)
return true
end

end
addEvent(ginasio,1000, {player = player,count = 19})

end


end
 
return TRUE      

end