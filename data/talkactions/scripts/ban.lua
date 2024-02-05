function onSay(cid, words, param, channel)


        local t = param:explode(",")
        local name, days = t[1], tonumber(t[2])  
local fraseban = 'You are Banned By a Gamemaster.'
if t[3] then
fraseban = t[3]
end

                        if name then
                        if days then 
local acc = getAccountIdByName(name)
 if acc ~= 0 then
local tempo = days * 24 * 3600 
        doAddAccountBanishment(acc, target, os.time() + tempo, 5, 2, fraseban.. " By "..getCreatureName(cid), 0)
        
                                       else
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player not exist.")
                                end
                        else
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Not allowed for dias of banishment.")
                        end
        else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player not exist.")
        end

if isPlayer(getPlayerByName(name)) then
doBroadcastMessage(name.." Is banned By :"..getCreatureName(cid).." , Comment : "..fraseban.." , days ban: "..days)
doRemoveCreature(getPlayerByName(name))
end

return true
end