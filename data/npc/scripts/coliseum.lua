local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 







local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local modscribe = 223032 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local goldsub = 223029 -- globalstorage
local silversub = 223030 -- globalstorage
local bronzesub = 223031 -- globalstorage
local gold = 1
local silver = 2
local bronze = 3
function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

if getGlobalStorageValue(enabledtour) <= 0 then
return selfSay("Hey man, sorry dont have event")
end
local categoria = getGlobalStorageValue(enabledtour)

local money = 10000
local levemax = 50
local leveminime = 9

if categoria == gold then
money = 100000
leveminime = 151
levemax = 500
end

if categoria == silver then
money = 50000
leveminime = 50
levemax = 150
end

local msgmoney = money/100
local inscrito = getGlobalStorageValue(countsubscribe) 
if inscrito <= 0 then
inscrito = 0
end
if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "subscribe") then
selfSay("Nice Your need a "..msgmoney.." dollars to subscribe ok have "..inscrito.." players subscribes !") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if getGlobalStorageValue(start) >= 1 then
return selfSay("Hey man, sorry tournament started")
end


if categoria == bronze then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Bronze Tournament need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you you have a strong level to Bronze Tournament max "..levemax.."")
end
end

if categoria == gold then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Gold Tournament need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you you have a strong level to Gold Tournament max "..levemax.."")
end
end
if categoria == silver then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Silver Tournament need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you you have a strong level to Silver Tournament max "..levemax.."")
end
end
if getPlayerStorageValue(cid,subscribe) >= 1 then
return selfSay("Hey man, your are a subscribe.")
end
if(doPlayerRemoveMoney(cid, money)) then
local inscrito = getGlobalStorageValue(countsubscribe) 
if inscrito <= 0 then
inscrito = 0
end
setGlobalStorageValue(countsubscribe,inscrito+1)
setPlayerStorageValue(cid,subscribe,categoria)
local formulario = getGlobalStorageValue(listsubscribe)
if formulario == "nulo" then
formulario = getCreatureName(cid)
else
formulario = formulario..","..getCreatureName(cid)
end

setGlobalStorageValue(listsubscribe,formulario)
local inscrito = getGlobalStorageValue(countsubscribe) 
selfSay("Nice guy you are a subscribe ,have "..inscrito.." players subscribes !") 
talkState[talkUser] = 0 
npcHandler:releaseFocus(cid) 
else
return selfSay("Sorry you dont have money, need "..msgmoney.." dollars")
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