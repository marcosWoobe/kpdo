local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 




local batalhas= {
[1] = {
pos = {x=1014, y=718, z=9},nome = "Water"},  --water
[2] = {
pos = {x=994, y=722, z=8},nome = "Fire"}, -- fire
[3] = {
pos = {x=1006, y=749, z=8},nome = "Rock"}, -- rock
[4] = {
pos = {x=1036, y=744, z=8},nome = "Ice"}, -- ice
[5] = {
pos = {x=1078, y=735, z=8},nome = "Dragon"}, -- dragon
[6] = {
pos = {x=1039, y=720, z=8},nome = "Normal"}, -- normal
[7] = {
pos = {x=1058, y=696, z=8},nome = "Electric"}, -- electric
[8] = {
pos = {x=1053, y=674, z=8},nome = "Classic"}, -- classic


function getPositTour(cid,enemy)
for i = 1,8 do
local achado = false
local posfalse = getCreaturesInRange(batalhas[i].pos, 10, 10, 1, 1)
    for _,pid in pairs(posfalse) do
achado = true
end
if not achado then
return batalhas[i].pos
end

end
return false
end

function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local inscricao = getGlobalStorageValue(77779)
local levelins = getGlobalStorageValue(77778)
local tabels = getGlobalStorageValue(77780)
local tabel = string.explode(tabels, ",") 
local enabledtour = getGlobalStorageValue(77777)

if enabledtour <= 0 then
return selfSay("Hey man, sorry dont have tournament")
end

if msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "subscribe") then
selfSay("Nice Your need a 500 dollars to subscribe ok?!") 
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 and msgcontains(string.lower(msg), "yes") then
if isTorneio(true) then
return selfSay("Hey man, sorry tournament started")
end
if tabel and isInArray(tabel,getCreatureName(cid)) then
return selfSay("Hey man, sorry you are a subscribe")
end
if getPlayerLevel(cid) <= levelins then
return selfSay("Hey man, sorry you dont have level need a '..levelins..'")
end
if(doPlayerRemoveMoney(cid, 50000)) then
local nameprint = getGlobalStorageValue(77780)..","..getCreatureName(cid)
setGlobalStorageValue(77780,nameprint)
local explodenameprint = string.explode(nameprint, ",") 
selfSay("Nice guy you are a subscribe !")
if #explodenameprint  >= inscricao then
setGlobalStorageValue(77782,#explodenameprint)



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