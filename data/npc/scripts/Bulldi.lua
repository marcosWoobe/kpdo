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
		        if msgcontains(xt, 'nick') or msgcontains(xt, 'name') or msgcontains(xt, 'change') then
 	                 	selfSay('You change nick your poke for 5000 dollarsn if you change say me nick?')
 	                 	talkState[talkUser] = 2
 	               
		                               	elseif talkState[talkUser] == 2 then
local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if IsValidNick(cid,msg) then
local old = getItemAttribute(pokemon.uid,"apelido")
if not old then
old = getItemAttribute(pokemon.uid,"nome")
end
if doPlayerRemoveMoney(cid, 500000) == TRUE then
doItemSetAttribute(pokemon.uid, "apelido", msg)
	selfSay("Change "..old.." to "..msg.." Success")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
else
selfSay("Sorry, you dont have money.")
end
else
selfSay("Sorry, name invalid.")
end
else
selfSay("Sorry, you need a equip pokemon and go poke, in feet sloot.")
end
return true
                        
       
end
   
end



npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. ! I can change nick your poke, ok?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

