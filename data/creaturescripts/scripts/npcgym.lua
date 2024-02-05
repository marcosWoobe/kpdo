function onKill(cid, target, lastHit)
	if isMonster(target) then
		local master = getCreatureMaster(target)
		if master and master ~= target and isPlayer(master) then
			local name = getCreatureName(cid):lower()
			for k, v in pairs(duels) do
				if v[2]:lower() == name and getCreatureStorage(master, v[1]) == 1 then
					doRemoveCreature(cid)
					doCreatureSetStorage(master, v[1])
					local npc = getCreatureByName(k)
					doCreatureSay(npc, 'Too bad. Come back when you are stronger.', TALKTYPE_PRIVATE_NP, false, master, getThingPos(npc))
					break
				end
			end
		end
	end
	return true
end