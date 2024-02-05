local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 







--[[Storages
122545 = player q entra na arena              (normal)
122546 = monstros na arena                    (normal)
122547 = waves                                (global)
122548 = qnts monstros tem na arena           (global)                     1
122549 = nome dos players q vao pra arena     (global)
122550 = qnts players tem na arena            (global)
122551 = waves para cada player               (normal)
122552 = categoria            (global)
122553 = evento50         (global)
122554 = evento100       (global)
122555 = evento200     (global)
122556 = startevento (global)

]]

function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local categoria = getGlobalStorageValue(122552)
if categoria  <= 0 then
return selfSay("Hey man, sorry dont have event")
end


local money = 10000
local levemax = 50
local leveminime = 9

if categoria == categorie200 then
money = 100000
leveminime = 151
levemax = 500
end

if categoria == categorie100 then
money = 50000
leveminime = 50
levemax = 150
end

local msgmoney = money/100

if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "subscribe") then
selfSay("Nice Your need a "..msgmoney.." dollars to subscribe ok have!") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if getGlobalStorageValue(122549) ~= -1 then
   local s = string.explode(getGlobalStorageValue(122549), ",")
   for i = 1, #s do
       if getCreatureName(cid) == s[i] then
          doPlayerSendTextMessage(cid, 20, "You are already registered in the Golden Arena!")
          return true
       end                                                               --alterado!!
   end
   if #s > 15 then
      doPlayerSendTextMessage(cid, 20, "Sorry, but we have reached the limit of players for the Golden Arena!")
      return true
   end
end


if categoria == categorie50 then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Bronze Arena need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you have a strong level to Bronze Arena max "..levemax.."")
end
end

if categoria == categorie200 then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Gold Arena need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you have a strong level to Gold Arena max "..levemax.."")
end
end
if categoria == categorie100 then
if getPlayerLevel(cid) < leveminime then
return selfSay("Hey man, sorry you dont have level to Silver Arena need a "..leveminime.."")
end
if getPlayerLevel(cid) > levemax then
return selfSay("Hey man, sorry you have a strong level to Silver Arena max "..levemax.."")
end
end
if getGlobalStorageValue(122550) >= 1 then
return selfSay("Hey man, Sorry , event Started")
end

if(doPlayerRemoveMoney(cid, money)) then
 doPlayerSendTextMessage(cid, 20, "You are registered to the Golden Arena!")
   if getGlobalStorageValue(122549) == -1 then
      setGlobalStorageValue(122549, getCreatureName(cid)..",")
   else                                                                            --alterado!!
      setGlobalStorageValue(122549, getGlobalStorageValue(122549)..""..getCreatureName(cid)..",")
   end

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