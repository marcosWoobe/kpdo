function onSay(cid, words, param)
if #getCreatureSummons(cid) == 0 then
return doPlayerSendCancel(cid, "You don't have any pokemon!")
end


local summons = getCreatureSummons(cid)[1]
addEvent(doCreatureSetLookDirection, 200, summons, 3)
local mon = getCreatureName(summons)
doCreatureSay(cid, ""..mon..", turn west!", TALKTYPE_SAY)
return true
end