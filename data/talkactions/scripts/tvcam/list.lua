function onSay(cid, words, param, channel)
	if (not getPlayerRecordingTV(cid)) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
	else
		local viewersList = getTVChannelViewers(cid)
		if (viewersList and #viewersList > 0) then
			local i, list, viewer = 1, ""
			for i, viewer in ipairs(viewersList) do
				if (i ~= #viewersList) then
					list = list .. getCreatureName(viewer) .. ", "
				else
					list = list .. getCreatureName(viewer) .. "."
				end
			end
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Viewers: " .. list)
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Nobody is watching your TV channel right now.")
		end
	end
	return true
end
