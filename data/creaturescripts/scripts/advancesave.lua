





function onAdvance(cid, skill, oldLevel, newLevel)




if skill == 8 then
if #getCreatureSummons(cid) >= 1 then
setCreatureMaxHealth(getCreatureSummons(cid)[1], getCreatureMaxHealth(getCreatureSummons(cid)[1]) + pokes[getCreatureName(getCreatureSummons(cid)[1])].cons)
doCreatureAddHealth(getCreatureSummons(cid)[1],getCreatureMaxHealth(getCreatureSummons(cid)[1]))
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)
doSendMagicEffect(getThingPos(cid), 29)
end
elseif skill == 2 then
doSendMagicEffect(getThingPos(cid), 28)
if getPlayerStorageValue(cid, 91859) >= 1 then
local speedskills = getPlayerSkill(cid,2)*5
doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, 250+speedskills)
end
end


return true

end