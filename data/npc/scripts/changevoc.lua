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



	if not npcHandler:isFocused(cid) then

		return false


	elseif isInArray({"Yes", "Help","yes","help","change","vocation"}, msg) then
if getPlayerStorageValue(cid, 121235) <= 0 then
selfSay('Sorry your need to have vocation to change vocation') 
return true
end

selfSay('you choose a vocation for change have ,Dragon Tamer,Dark Face,Leaf Blade,Flame Lord,Creature Tamer,Earth King,Psychic Master,Rock Master,Sea king,Avalanche King,Venom King,Fight Champion,Hurricane King,Thunder Lord,Bug King') 
talkState[talkUser] = 1
elseif  isInArray({"dragon", "Dragon Tamer"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 3)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Dragon Tamer') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"ghost", "Dark Face"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 4)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Dark Face') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"grass","Leaf Blade"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 5)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Leaf Blade') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"fire","Flame Lord"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 6)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Flame Lord') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"normal","Creature Tamer"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 7)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Creature Tamer') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"ground","Earth King"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 8)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Earth King') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"psychic","Psychic Master"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 9)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Psychic Master') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"rock","Rock Master"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 10)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Rock Master') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"water","Sea king"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 11)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Sea king') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"ice","Avalanche King"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 12)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Avalanche King') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"poison","Venom King"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 13)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Venom King') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"fight","Fight Champion"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 14)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Fight Champion') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"flying","Hurricane King"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 15)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Hurricane King') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"electric","Thunder Lord"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 16)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Thunder Lord') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
elseif  isInArray({"bug","Bug King"}, msg)  and  talkState[talkUser] == 1 then
if(doPlayerRemoveItem(cid, 2145, 10) == true) then  
doPlayerSetVocation(cid, 17)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Bug King') 
talkState[talkUser] = 0
else
selfSay("Sorry you need a 10 diamonds for change vocation")
end
end
	return true

 end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you, for change vocation, for 10 diamonds! ")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())