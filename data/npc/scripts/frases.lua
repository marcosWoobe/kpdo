local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


 
function onCreatureAppear(cid)
 

npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 
			
npcHandler:onCreatureDisappear(cid) 
end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 
						
npcHandler:onThink() 

end

local focus = 0
local talkState = {}
function creatureSayCallback(cid, type, msg)

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
	 local xt = string.lower(msg)
      if msgcontains(xt, 'speech') or msgcontains(xt, 'help') then
selfSay("You change speech word go or back for 5000 dollars if you change go say me go,if say back , say me back?")
	elseif  msgcontains(xt, 'go') then
 	                 	selfSay('You change speech word go poke for 5000 dollars ,say me world?')
 	                 	talkState[talkUser] = 2
 	               
		                               	elseif talkState[talkUser] == 2 then
local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if string.len(msg) >= 2 and string.len(msg) <= 30 then
local old = getItemAttribute(pokemon.uid,"fg")
if not old then
return selfSay("say /gopoke first change free")
end
if doPlayerRemoveMoney(cid, 500000) == TRUE then
doItemSetAttribute(pokemon.uid, "fg", msg)
	selfSay("Change "..old.." to "..msg.." Success")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
else
selfSay("Sorry, you dont have money.")
end
else
selfSay("Sorry, world invalid only 2 min and max 29 characters.")
end
else
selfSay("Sorry, you need a equip pokemon and go poke, in feet sloot.")
end
elseif  msgcontains(xt, 'back') then
 	                 	selfSay('You change speech word back poke for 5000 dollars ,say me world?')
 	                 	talkState[talkUser] = 3
 	               
		                               	elseif talkState[talkUser] == 3 then
local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if string.len(msg) >= 2 and string.len(msg) <= 30 then
local old = getItemAttribute(pokemon.uid,"fb")
if not old then
return selfSay("say /backpoke first change free")
end
if doPlayerRemoveMoney(cid, 500000) == TRUE then
doItemSetAttribute(pokemon.uid, "fb", msg)
	selfSay("Change "..old.." to "..msg.." Success")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
else
selfSay("Sorry, you dont have money.")
end
else
selfSay("Sorry, world invalid only 2 min and max 29 characters.")
end
else
selfSay("Sorry, you need a equip pokemon and go poke, in feet sloot.")
end
return true
                        
       
end
   
end



npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. ! I can change go world your poke or back, ok?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

