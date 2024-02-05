function onKill(cid, target, lastHit)
	if lastHit and isMonster(target) and #getCreatureSummons(cid) ~= 0 then
		local name = getCreatureName(target):lower()
		for k, v in pairs(duels) do
			if v[2]:lower() == name and getCreatureStorage(cid, v[1]) == 1 then
				local npc = getCreatureByName(k)
				doCreatureSay(npc, 'Nicely done! Here, take this as a reward.', TALKTYPE_PRIVATE_NP, false, cid, getThingPos(npc))
				doPlayerAddExperience(cid, v[3])
				doSendAnimatedText(getThingPos(cid), v[3], 215)
				doRemoveCreature(target)
				doCreatureSetStorage(cid, v[1], 2)
				break
			end
		end
	end
	return true
end