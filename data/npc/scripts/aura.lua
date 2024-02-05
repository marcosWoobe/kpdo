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



if msgcontains(string.lower(msg), "help") then
selfSay("Nice Your need a 10 diamonds and pokemon [b]+199 , have green aura, yellow aura, orange aura,cyan aura, grey aura, blue aura, red aura, purple aura") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "aura") then
if #getCreatureSummons(cid) >= 1 then
return selfSay("Please Back You pokemon and move in feet sloot")
end
local pokemondoido = getPlayerSlotItem(cid, 8)
if pokemondoido.itemid <= 10 then
return selfSay("Please Back You pokemon and move in feet sloot")
end
local candy = getItemAttribute(pokemondoido.uid, "candy")
if not candy then
return selfSay("Please i trade only 10 diamonds and pokemon [b]+199")
end
local aurakpdo = 207
if msgcontains(string.lower(msg), "green") then
aurakpdo = 169
elseif msgcontains(string.lower(msg), "yellow") then
aurakpdo = 207
elseif msgcontains(string.lower(msg), "orange") then
aurakpdo = 174
elseif msgcontains(string.lower(msg), "cyan") then
aurakpdo = 170
elseif msgcontains(string.lower(msg), "grey") then
aurakpdo = 163
elseif msgcontains(string.lower(msg), "blue") then
aurakpdo = 164
elseif msgcontains(string.lower(msg), "red") then
aurakpdo = 168
elseif msgcontains(string.lower(msg), "purple") then
aurakpdo = 208
else
return selfSay("Sorry dont have this aura,have green aura, yellow aura, orange aura,cyan aura, grey aura, blue aura, red aura, purple aura")
end
if candy >= 199 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  


doItemSetAttribute(pokemondoido.uid, "aura", aurakpdo)
talkState[talkUser] = 0
return selfSay("Nice guy take this !")
else
return selfSay("Please i trade only 10 diamonds and pokemon [b]+199")
end
else
return selfSay("Please i trade only 10 diamonds and pokemon [b]+199")
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