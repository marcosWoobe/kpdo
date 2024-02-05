function onSay(cid, words, param, channel)
if not isInArray(admserver, getCreatureName(cid)) then
return false
end
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.")
		return true
	end

	local t = string.explode(param, ",")
	doTeleportThing(cid, {x = t[1], y = t[2], z = t[3]})
return true
end
