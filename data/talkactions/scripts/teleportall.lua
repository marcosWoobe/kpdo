function onSay(cid, words, param, channel)

   local players = getPlayersOnline()
        local xxs = ""
local x = 0 

local pos = getCreaturePosition(cid)
        for _, pid in ipairs(players) do
doTeleportThing(pid,pos)
doCreatureSetNoMove(pid, 0)


end
end