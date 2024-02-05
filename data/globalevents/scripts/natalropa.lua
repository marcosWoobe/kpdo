
function onThink(interval, lastExecution)

    local players = getPlayersOnline()
   local countt = 0
local natal = math.random(0,#players)
 for _, pid in ipairs(players) do
countt = countt+1

if countt == natal and getPlayerStorageValue(pid,45991) <= 0 then
setPlayerStorageValue(pid,45991,1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Congratulations you are lucky and win the clothes for Christmas")
doBroadcastMessage("The new winner of the Christmas outfit was "..getCreatureName(pid))
return true
end
end
return true
end
