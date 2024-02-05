local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink()
local player = getPlayerStorageValue(cid,1)
if isPlayer(player) then
if getPlayerStorageValue(cid,2) >= 1 then
if getDistanceBetween(getThingPos(cid), getThingPos(player)) > 2 then
local poscam = getCreaturePosition(player)
doTeleportThing(cid, poscam)
end
end
local playerout = getCreatureOutfit(player)
if getCreatureOutfit(cid) ~= playerout then
doSetCreatureOutfit(cid, playerout, -1)
end
local playerdir = getCreatureLookDir(player)
if getCreatureLookDir(cid) ~= playerdir then
doCreatureSetLookDirection(cid,playerdir)
end
else
doRemoveCreature(cid)
end
return true
 end 



npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())