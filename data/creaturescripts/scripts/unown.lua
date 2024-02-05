function onThink(cid, interval)
local outype = getCreatureOutfit(cid).lookType
if outype <= 463 then
doSetCreatureOutfit(cid, {lookType = outype+1}, 500)
end
return true
end