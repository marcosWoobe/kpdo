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



if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "omastar") then
selfSay("Nice Your need a Omastar [b]+20 and 400k!") 
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
if candy ~= "Omastar" then
return selfSay("Please i trade only Omastar [b]+20 and 400k for Ancient Omastar")
end
local candy = getItemAttribute(pokemondoido.uid, "candy")
if not candy then
return selfSay("Please i trade only Omastar [b]+20 and 400k for Ancient Omastar")
end
if candy >= 20 then
if(doPlayerRemoveMoney(cid, 40000000)) then

doItemSetAttribute(pokemondoido.uid, "candy", candy-20)
local boost = getItemAttribute(pokemondoido.uid, "boost")
if not boost then
boost = 0
end
local candy = getItemAttribute(pokemondoido.uid, "candy")
local descrilv = candy+boost
local description = "Contains a Ancient Omastar ST[+"..boost.. "]+B[+"..candy.."]=["..descrilv.."]."
doItemSetAttribute(pokemondoido.uid, "fine", 100)
doItemSetAttribute(pokemondoido.uid, "nome", "Ancient Omastar")
doItemSetAttribute(pokemondoido.uid, "description", description)
talkState[talkUser] = 0
return selfSay("Nice guy take this !")
else
return selfSay("Please i trade only Omastar [b]+20 and 400k for Ancient Omastar")
end
else
return selfSay("Please i trade only Omastar [b]+20 and 400k for Ancient Omastar")
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