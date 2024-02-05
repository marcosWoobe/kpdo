

function onStepIn(cid, item, position, fromPosition)
if getPlayerStorageValue(cid, 91859) <= 0 then
return true
end
doPlayerAddSkillTry(cid, 2, 1)
end

