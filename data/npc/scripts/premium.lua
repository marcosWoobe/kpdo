local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 
 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 
 
function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false  
end  
 
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid 

local
worldchange =
{
["nibiru"] = {worldid = 0},
["pandora"] = {worldid = 1},
["fusion"] = {worldid = 2},
["maya"] = {worldid = 3},

} 
 
-- Conversa Jogador/NPC  

if(msgcontains(msg, 'offer') or msgcontains(msg, 'Offer')) then
selfSay('I trade you diamonds or big diamonds,10 diamonds for 30 days vip ,10 big diamonds for 70 days vip ,30 bid diamonds for change world and 2 diamonds for blessing ,3 diamonds for change sex and 5 diamonds for change you Residence.', cid) 
elseif(msgcontains(string.lower(msg), 'diamond account') or msgcontains(string.lower(msg), 'vip') or msgcontains(string.lower(msg), 'upgrade')) then
selfSay('Diamond account users are able to use surf ,dive ,fly,teleport and caught more 30% chance explore islands secrets only for vips. They can also wear all clothes, rent houses . Would you like to upgrade 10 diamonds for 30 days?', cid) 
talkState[talkUser] = 1 
elseif(msgcontains(string.lower(msg), 'blessing') or msgcontains(string.lower(msg), 'bless')) then
selfSay('To be blessed 3 diamonds are necessary, would you like to go on?', cid) 
talkState[talkUser] = 2 
elseif(msgcontains(string.lower(msg), 'change sex')) then
selfSay('To change sex 5 diamonds are necessary, would you like to go on?', cid) 
talkState[talkUser] = 3 
elseif(msgcontains(string.lower(msg), 'residence') or msgcontains(string.lower(msg), 'hometown')) then
selfSay('To change your hometown five diamonds are needed, what the city wants to choose?', cid) 
talkState[talkUser] = 4  
elseif(msgcontains(string.lower(msg), 'big diamond account') or msgcontains(string.lower(msg), 'big diamond')) then
selfSay('diamond account users are able to use surf ,dive ,fly,teleport and caught more 30% chance explore islands secrets only for vips. They can also wear all clothes, rent houses . Would you like to upgrade 10 big diamond for 70 days?', cid) 
talkState[talkUser] = 5
elseif(msgcontains(string.lower(msg), 'change world') or msgcontains(string.lower(msg), 'world') or msgcontains(string.lower(msg), 'world trade')) then
selfSay('you need a 30 big diamond for change world , have a Nibiru,Pandora,Fusion and Maya World to change.', cid) 
talkState[talkUser] = 6

-- Confirmação da Compra  
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then  
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
selfSay('Thanks!', cid) 
doPlayerAddPremiumDays(cid, 30)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then  
if getPlayerBlessing(cid, 1) and getPlayerBlessing(cid, 2) and getPlayerBlessing(cid, 3) and getPlayerBlessing(cid, 4) and getPlayerBlessing(cid, 5) then
selfSay('You have already got one or more blessings!', cid) 
else
if(doPlayerRemoveItem(cid, 2145, 2) == true) then
selfSay('Thanks!', cid) 
doPlayerAddBlessing(cid, 1)
doPlayerAddBlessing(cid, 2)
doPlayerAddBlessing(cid, 3)
doPlayerAddBlessing(cid, 4)
doPlayerAddBlessing(cid, 5)
talkState[talkUser] = 0
else
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end
end

elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 5) then  
if(doPlayerRemoveItem(cid, 11216, 10) == true) then  
selfSay('Thanks!', cid) 
doPlayerAddPremiumDays(cid, 70)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough big diamonds.', cid) 
talkState[talkUser] = 0  
end  


 

elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 3) then  
if(doPlayerRemoveItem(cid, 2145, 3) == true) then  
selfSay('Thanks!', cid) 
if(getPlayerSex(cid) == PLAYERSEX_FEMALE) then
doPlayerSetSex(cid, PLAYERSEX_MALE)
else
doPlayerSetSex(cid, PLAYERSEX_FEMALE)
end
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end 
elseif(msgcontains(string.lower(msg), 'saffron') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 1)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'cerulean') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 2)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'lavender') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 3)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'fuchsia') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 4)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'celadon') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 5)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'viridian') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 6)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'vermilion') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 7)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'pewter') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 8)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'pallet') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 9)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'cinnabar') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 10)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end  
elseif(msgcontains(string.lower(msg), 'frozzen') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 11)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end 
elseif(msgcontains(string.lower(msg), 'blackthorn') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 12)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end   
elseif(msgcontains(string.lower(msg), 'azalea') and talkState[talkUser] == 4) then  
if(doPlayerRemoveItem(cid, 2145, 5) == true) then  
selfSay('Thanks!', cid) 
doPlayerSetTown(cid, 13)
talkState[talkUser] = 0 
else  
selfSay('You do not have enough diamonds.', cid) 
talkState[talkUser] = 0  
end   
elseif(msgcontains(string.lower(msg), 'nibiru') or msgcontains(string.lower(msg), 'pandora') or msgcontains(string.lower(msg), 'fusion') or msgcontains(string.lower(msg), 'maya')) and talkState[talkUser] == 6 then
local world = worldchange[string.lower(msg)]
local wordpad = getConfigValue('worldId')
if world.worldid == wordpad then 
selfSay('You do not change to '..msg..'.', cid) 
return true
end
if getHouseByPlayerGUID(getPlayerGUID(cid)) then
selfSay('You have a house, your need a sell you house or !leave.', cid) 
return true
end
if not world then
selfSay('Dont have this world, have, nibiru, pandora,fusion and maya.', cid) 
return true
end

if(doPlayerRemoveItem(cid, 11216, 30) == true)  then  
selfSay('Thanks!', cid) 
local nick = getCreatureName(cid)
doRemoveCreature(cid)
db.executeQuery("UPDATE `players` SET `world_id` = '" ..world.worldid.. "' WHERE name = '" ..nick.. "';")
talkState[talkUser] = 0 
else  
selfSay('You do not have enough big diamonds, need a 30.', cid) 
return true
end  

end
return TRUE
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())