function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (getPlayerRecordingTV(cid)) then
		doPlayerSendCancel(cid, "You're already recording.")
	elseif (not isPremium(cid)) then
		doPlayerSendCancel(cid, "Sorry, only premium accounts can create a TV channel.")
	elseif (doPlayerCreateTVChannel(cid)) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Welcome to your TV channel! Command list:\n- /tvname new_name - Change your TV channel name\n- /tvkick player_name - Kick a viewer\n- /tvlist - List all viewers\n- /tvban player_name - Ban a viewer\n- /tvunban player_name - Unban a viewer")
	else
		doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
	end
	return true
end
