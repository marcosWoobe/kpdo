local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)



	if not npcHandler:isFocused(cid) then
		return false
	elseif msgcontains(msg, 'duel') or msgcontains(msg, 'yes') then
		local t = duels[getNpcName():lower()]
		if t then
			if  getCreatureStorage(cid, t[2]) == -1 then
				local v = getCreatureSummons(cid)
				if #v ~= 0 then
					doCreatureSay(getNpcCid(), 'Go, ' .. t[2], TALKTYPE_ORANGE_1)
					local k = doSummonMonster(getNpcCid(), 'Dragonite s')
					doMonsterSetTarget(k, v[1])
					
					doCreatureSetStorage(cid, t[1], 1)
registerCreatureEvent(cid, "gymkill")
	registerCreatureEvent(getNpcCid(), "gymnpc")
				else
					selfSay('Sorry, but you must have a pokemon released!', cid)
				end
			else
				selfSay('You have already dueled me.', cid)
			end
			npcHandler:releaseFocus(cid)
		end
	end
	return true
end
 
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, do you want to {duel}?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())