local storeige = 18316
local function msg(cid,m)
    doCreatureSay(cid,m,TALKTYPE_ORANGE_1)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, m)
end
function onSay(cid, words, param, channel) ---Script by mock the bear
    local c = getPlayerStorageValue(cid,storeige)
    c = c == -1 and 0 or c
    if param:find('balance') or param == 'b'  or (words == '!balance') then
        msg(cid,'Você possue '..c..' em sua conta')
    elseif param:find('amount') or param == 'a' then
        local c = getPlayerMoney(cid)
        doCreatureSay(cid,'Você possue '..c..' gps.',TALKTYPE_ORANGE_1)
        msg(cid,'Você possue '..c..' gps.')
    elseif param:match('deposit (.+)') or param:match('d (.+)') or (words == '!deposit') then
        local v = param:match('deposit (.+)') or param:match('d (.+)') or tonumber(param) or param == 'all' and param
        local dep = tonumber(v == 'all' and getPlayerMoney(cid) or v)
if not dep then
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Insira um valor')
        else
            if getPlayerMoney(cid) >= dep then
if dep >= 1 then
                setPlayerStorageValue(cid,storeige,c+dep)
                doPlayerRemoveMoney(cid,dep)
                msg(cid,'Depositado '..dep..'.')
else
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Insira um valor positivo')
end
            else
                msg(cid,'Você só possue '..getPlayerMoney(cid)..'.')
            end
        end
    elseif param:match('withdraw (.+)') or param:match('w (.+)') or (words == '!withdraw') then
        local v = param:match('withdraw (.+)') or param:match('w (.+)') or tonumber(param) or param == 'all' and param
        local dep = tonumber(v == 'all' and c or v)
        if not dep then
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Insira um valor')
        else
            if c >= dep   then
if dep >= 1 then
                setPlayerStorageValue(cid,storeige,c-dep)
                doPlayerAddMoney(cid,dep)
                msg(cid,'Sacado '..dep..'.')
else
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Insira um valor positivo')
end
            else
                msg(cid,'Sua conta só possue '..c..'.')
            end
        end
    else
        doPlayerSendTextMessage(cid, 25, "Use assim:\n!bank deposit x\n!bank balance\n!bank withdraw\n!bank amount(ou assim)\n!bank d x\n!bank w x\n!bank deposit all\n!bank a")
    end
    return TRUE
end