function onUse(cid, item, frompos, item2, topos)
if item2.actionid == 5423 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=976,y=1030,z=2})
doTeleportThing(cid, {x=976,y=1030,z=2})
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")
end
doTeleportThing(cid, {x=976,y=1030,z=2})
--doCreatureSetNoMove(cid, 1)

end

if item2.actionid == 5424 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=972,y=1030,z=2})
doTeleportThing(cid, {x=972,y=1030,z=2})
--doCreatureSetNoMove(cid, 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")
end
doTeleportThing(cid, {x=972,y=1030,z=2})
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")
end
if item2.actionid == 5002 then
--doCreatureSetNoMove(cid, 0)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=981,y=1032,z=2})
doTeleportThing(cid, {x=981,y=1032,z=2})

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")

end
doTeleportThing(cid, {x=981,y=1032,z=2})
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")

end


end





