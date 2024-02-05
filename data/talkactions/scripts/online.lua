

function onSay(cid, words, param, frompos)

if not isInArray(admserver, getCreatureName(cid)) then
return false
end
        local players = getPlayersOnline()
        local xxs = ""
local offtrue = param
if offtrue == "count" then
doPlayerSendTextMessage(cid,28,#players)
return true
end
if offtrue == "nick" then
 for _, pid in ipairs(players) do
xxs = xxs .."[".. getCreatureName(pid) .. "] [Ping: "..ping.CheckPing(pid).."]\n"
end
doShowTextDialog(cid, 2501, #players.." player(s) online :\n\n" .. xxs)
return true
end

local x = 0 
        for _, pid in ipairs(players) do
x = x+1
local battle = getCreatureTarget(pid) == 0 and "nothing" or getCreatureName(getCreatureTarget(pid))
local poke = #getCreatureSummons(pid) == 0 and "nothing" or getCreatureName(getCreatureSummons(pid)[1])


                       xxs = xxs .. "[".. getCreatureName(pid) .. "] [Ping: "..ping.CheckPing(pid).."]\n[IP:" .. doConvertIntegerToIp(getPlayerIp(pid)) .."] [Caught pokes: ".. getPlayerSoul(pid) .."]\n[Target: " .. battle .. " Using: " ..poke.."]\n\n"
                   
              
 
        end



                        doShowTextDialog(cid, 2501, x.." player(s) online :\n\n" .. xxs)
   

        return true
end