function onCreatureAppear(cid)
	
end

function onCreatureDisappear(cid)
	
end



function onCreatureSay(cid, type, msg)

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
if msgcontains(msg, 'battle') or msgcontains(msg, 'yes') or msgcontains(msg, 'duel') then
if #getCreatureSummons(cid) >= 1 then

local cidnpc = getNpcCid()


selfSay("Take this!")
local k = doCreateMonster('Dragonite s', getNpcPos())
	doMonsterSetTarget(k, getCreatureSummons(cid)[1])
registerCreatureEvent(k, "Gambiarra")
setPlayerStorageValue(cid, 9999, 1)


else
	selfSay('Please go you pokemon for battle') 
end
	

	



end
end

function onThink()

end


