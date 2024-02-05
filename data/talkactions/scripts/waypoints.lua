function onSay(cid, words, param, channel)
if not isInArray(admserver, getCreatureName(cid)) then
return false
end
	if(param ~= '') then
		doWaypointAddTemporial(param, getCreaturePosition(cid))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Temporial waypoint saved.")
		return true
	end

	local str = ""
	for i, waypoint in ipairs(getWaypointList()) do
		str = str .. waypoint.name .. "\n"
	end

	doShowTextDialog(cid, 2160, str)
	return true
end
