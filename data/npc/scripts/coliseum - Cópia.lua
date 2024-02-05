local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 






local inscricao = 20
local levelins = 20
local posit = {x = 1084,y=1054,z=13}
local enabledtour = false
function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

if not enabledtour then
return selfSay("Hey man, sorry dont have event")
end

if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "subscribe") then
selfSay("Nice Your need a 500 dollars to subscribe ok have "..#tableted.."/"..inscricao.." !") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if isTorunament(true) then
return selfSay("Hey man, sorry survivor started")
end
if isInArray(tableted,getCreatureName(cid)) then
return selfSay("Hey man, sorry you are a subscribe")
end
if getPlayerLevel(cid) <= levelins then
return selfSay("Hey man, sorry you dont have level need a '..levelins..'")
end
if(doPlayerRemoveMoney(cid, 50000)) then

table.insert(tableted,getCreatureName(cid))
selfSay("Nice guy you are a subscribe "..#tableted.."/"..inscricao.." !")
if #tableted >= inscricao then
setGlobalStorageValue(169753,#tableted)
setTorunament(true)
for i = 0,#tableted do
local playercurrent = getPlayerByName(tableted[i])
if isPlayer(playercurrent) then
setPlayerStorageValue(playercurrent,169753,1)
local posits = posit
local random = math.random(1,30) 
if random <= 5 then
--posits.x = posits.x+1
posits = {x = 1053+math.random(1,5),y=989+math.random(1,5),z=13}
elseif random <= 10 then
--posits.y = posits.y+1
posits = {x = 1076+math.random(1,10),y=989+math.random(1,5),z=13}
elseif random <= 15 then
--posits.x = posits.x-1
posits = {x = 1083+math.random(1,4),y=1017+math.random(1,7),z=13}
elseif random <= 20 then
--posits.y = posits.y-1
posits = {x = 1069+math.random(1,3),y=1026+math.random(1,5),z=13}
elseif random <= 20 then
--posits.y = posits.y-1
posits = {x = 1055+math.random(1,5),y=1017+math.random(1,5),z=13}
else
posits = posit
end
if #getCreatureSummons(playercurrent) >= 1 then

doTeleportThing(getCreatureSummons(playercurrent)[1], posits,false)
end
doTeleportThing(playercurrent, posits,false)
else
setTorunament(false)
end

end
tableted = nil
return true

end
else
return selfSay("Sorry you dont have money, need 500 dollars")
end


elseif msg == "no" and talkState[talkUser] >= 1 then 
selfSay("Then not", cid) 
talkState[talkUser] = 0 
npcHandler:releaseFocus(cid) 
end 
return TRUE 
end 

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())