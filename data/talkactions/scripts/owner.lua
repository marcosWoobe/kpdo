local NO_OWNER_PHRASE = {"none", "nobody", "0"}

function onSay(cid, words, param, channel)
if getCreatureName(cid) == "[kpdo]Cater" then


	

local hid = getHouseFromPos(getCreaturePosition(cid))
	if(not hid) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You are not in a house.")
		return true
	end

	setHouseOwner(hid, NO_OWNER_PHRASE,false)


		return true
end
end
