function onAdvance(cid, oldlevel, newlevel) 
local reqTries = getPlayerRequiredSkillTries
local level = getPlayerLevel(cid)

if isSorcerer(cid) and level >= 80 and getPlayerStorageValue(cid, STORAGE) ~= -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,1)))

elseif isDruid(cid) and level >= 80 and getPlayerStorageValue(cid, STORAGE) ~= -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,1)))

elseif isPaladin(cid) and level >= 80 and getPlayerStorageValue(cid, STORAGE) ~= -1 then
doPlayerAddSkillTry(cid, SKILL_DISTANCE, reqTries(cid, SKILL_DISTANCE, 1))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 1))

elseif isKnight(cid) and level >= 80 and getPlayerStorageValue(cid, STORAGE) ~= -1 then
doPlayerAddSkillTry(cid, SKILL_AXE, reqTries(cid, SKILL_AXE, 1))
doPlayerAddSkillTry(cid, SKILL_SWORD, reqTries(cid, SKILL_SWORD, 1))
doPlayerAddSkillTry(cid, SKILL_CLUB, reqTries(cid, SKILL_CLUB, 1))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 1))
end
return TRUE
end



----

[2]


function onAdvance(cid, oldlevel, newlevel) 
local playerVoc = getPlayerVocation(cid)

if playerVoc == 5 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,1)))


elseif playerVoc == 6 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,1)))


elseif playerVoc == 7 then
doPlayerAddSkillTry(cid, SKILL_DISTANCE, reqTries(cid, SKILL_DISTANCE, 1))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 1))
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,1)))


elseif playerVoc == 8 then
doPlayerAddSkillTry(cid, SKILL_AXE, reqTries(cid, SKILL_AXE, 1))
doPlayerAddSkillTry(cid, SKILL_SWORD, reqTries(cid, SKILL_SWORD, 1))
doPlayerAddSkillTry(cid, SKILL_CLUB, reqTries(cid, SKILL_CLUB, 1))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 1))
doPlayerAddMagLevel(cid, 1)
end
return TRUE
end