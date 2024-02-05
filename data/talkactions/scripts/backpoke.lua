

function onSay(cid, words, param)



local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if string.len(param) >= 2 and string.len(param) <= 30 then
local old = getItemAttribute(pokemon.uid,"fb")
if old and old ~= "null" then
return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry Not Possible change world back, go to Scrizor for change back speech")
end
doItemSetAttribute(pokemon.uid, "fb", param)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "you set world back Success")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, world invalid only 2 min and max 29 characters.")

end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon in feet slot")
end

return true
end
