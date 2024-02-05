local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local talkState = {}
local quest = 76669
local reward = 70000
        
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
        local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
        if(not npcHandler:isFocused(cid)) then
                return false
        elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then
                npcHandler:say("Great! I'll reward you greatly {ok}?.", cid)
                talkState[talkUser] = 2
        elseif msgcontains(msg, "ok") and talkState[talkUser] == 2 then
                npcHandler:say("Okay, Hurry up!", cid)
                setPlayerStorageValue(cid, quest, 2)
                talkState[talkUser] = 0
        elseif msgcontains(msg, "help") then
                local str = getPlayerStorageValue(cid, quest)
                if(str < 2) then
                        npcHandler:say("Great, an adventurer. I need you to defeated 500 abras. Well, can you defeated 500 abras for me?", cid) 
                        talkState[talkUser] = 1
                        return true
                elseif(str == 2) then
                        npcHandler:say("Please come back for a reward.", cid)
                elseif(str == 3) then
                        npcHandler:say("you solved enigma, already? You're a true pokemon trainer! As I promised, here's your reward.", cid)
                        doPlayerSendTextMessage(cid,22,"Você ganhou um Abra.")
local health = 350 -- Health do poke
local maxhealth = 350 -- Maximo de health do poke
local description = "Contains a Abra."
local poke1 = "This is Abra's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Abra")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
                        doPlayerAddExp(cid, 1000000)
                        doPlayerAddOutfit(cid, getPlayerSex(cid) == 0 and 264 or 264, 2)
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have been rewarded with the Elite trainer outifit!")
                        setPlayerStorageValue(cid, quest, 4)
                elseif(str == 4) then
                        npcHandler:say("You have done enough for me, I will soon plan our attack!", cid)
                end
                talkState[talkUser] = 0
        end
        return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())