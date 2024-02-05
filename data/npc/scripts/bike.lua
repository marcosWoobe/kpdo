local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 






local inscricao = 11
local skills = 30
local posit = {x = 1058,y=986,z=13}
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
selfSay("Nice Your need a 500 dollars to subscribe ok?!") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if isTorunament(true) then
return selfSay("Hey man, sorry survivor started")
end
if isInArray(tabletedbike,getCreatureName(cid)) then
return selfSay("Hey man, sorry you are a subscribe")
end
if getPlayerLevel(cid) <=  skills then
return selfSay("Hey man, sorry you dont have level need a '..skills..'")
end
if getPlayerSkill(cid,2) <=  skills then
return selfSay("Hey man, sorry you dont have bike speed skills, need a '..skills..'")
end
if(doPlayerRemoveMoney(cid, 50000)) then

table.insert(tabletedbike,getCreatureName(cid))
if #tabletedbike >= inscricao then
setGlobalStorageValue(169756,1)
for i = 0,#tabletedbike do
local playercurrent = getPlayerByName(tabletedbike[i])
if isPlayer(playercurrent) then
local posits = {x = 1058+i+1,y=986,z=13}
if i == 1 then
posits = {x = 1058,y=986,z=13}
end

if #getCreatureSummons(playercurrent) >= 1 then

doTeleportThing(getCreatureSummons(playercurrent)[1], posits,false)
end
doTeleportThing(playercurrent, posits,false)


end

end
tabletedbike = nil
return selfSay("Nice guy you are a subscribe !")

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