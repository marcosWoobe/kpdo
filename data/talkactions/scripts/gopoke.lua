

function onSay(cid, words, param)



local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if string.len(param) >= 2 and string.len(param) <= 30 then
local old = getItemAttribute(pokemon.uid,"fg")
if old and old ~= "null" then
return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry Not Possible change world go, go to Scrizor for change go speech")
end
doItemSetAttribute(pokemon.uid, "fg", param)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "you set world go Success")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, world invalid only 2 min and max 29 characters.")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon in feet slot")
end
return true
end
