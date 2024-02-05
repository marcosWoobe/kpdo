function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
	return true
end

if getPlayerStorageValue(cid, 91859) <= 0 then

end

local function contagem(params)
if getPlayerStorageValue(params.cid, 4445) >= 1 then
if params.count == 1 then
addEvent(gobackorlose,1000, {cid = params.cid})
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose duel")
return true
end
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have "..params.count.." seconds to go you pokemon or lose duel")
addEvent(contagem,1000, {cid = params.cid,count = params.count-1})
end

end


if getPlayerStorageValue(cid, 91859) <= 0 then

end
setPlayerStorageValue(cid, 4445, 1)
doSendAnimatedText(getCreaturePosition(cid), "Poke Down", 210)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")
addEvent(contagem,1000, {cid = cid,count = 19})

end
addEvent(contagem,1000, {cid = cid,count = params.count-1})

end