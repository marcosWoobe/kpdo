

function onUse(cid, item, frompos, item2, topos)
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid,"watch tv, you need to collect your pokemon")
end
if (hasCondition(cid, CONDITION_OUTFIT)) then
return doPlayerSendCancel(cid,"You cant watch tv, fly/ride")
end


	if (getPlayerRecordingTV(cid)) then
		doPlayerSendCancel(cid, "You can't watch TV while you're recording.")
	else
		doPlayerSendTVChannelsDialog(cid)
	end
end