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



if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "elite") then
selfSay("Nice Your need a Hitmonchan [b]+20 and 200k!") 
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
if candy ~= "Hitmonchan" then
return selfSay("Please i trade only hitmonchan for Elite hitmonchan.")
end
local candy = getItemAttribute(pokemondoido.uid, "candy")
if not candy then
return selfSay("Please i trade only hitmonchan [b]+20 for Elite hitmonchan.")
end
if candy >= 20 then
if(doPlayerRemoveMoney(cid, 20000000)) then

doItemSetAttribute(pokemondoido.uid, "candy", candy-20)
local boost = getItemAttribute(pokemondoido.uid, "boost")
if not boost then
boost = 0
end
local candy = getItemAttribute(pokemondoido.uid, "candy")
local descrilv = candy+boost
local description = "Contains a Elite Hitmonchan ST[+"..boost.. "]+B[+"..candy.."]=["..descrilv.."]."
doItemSetAttribute(pokemondoido.uid, "fine", 100)
doItemSetAttribute(pokemondoido.uid, "nome", "Elite Hitmonchan")
doItemSetAttribute(pokemondoido.uid, "description", description)
doTransformItem(getPlayerSlotItem(cid, 7).uid, 121)
talkState[talkUser] = 0
return selfSay("Nice guy take this !")
else
return selfSay("Please i trade only hitmonlee [b]+20 and 200k for Elite Hitmonchan")
end
else
return selfSay("Please i trade only hitmonlee [b]+20 for Elite Hitmonchan.")
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