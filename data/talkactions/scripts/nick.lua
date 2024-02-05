

function onSay(cid, words, param)



local pokemon = getPlayerSlotItem(cid, 8)


if pokemon.itemid >= 1 then
if IsValidNick(cid,param) then
local old = getItemAttribute(pokemon.uid,"apelido")
local nick = getItemAttribute(pokemon.uid,"nome")
if old  then
if old ~= nick then
return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry Not Possible change nick, go to Jully for change nick.")
end

end
doItemSetAttribute(pokemon.uid, "apelido", param)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "you set nick Success")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon in feet slot")
end
return true
end
