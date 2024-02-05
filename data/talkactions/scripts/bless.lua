function onSay(cid, words, param)
if getPlayerBlessing(cid, 1) or getPlayerBlessing(cid, 2) or getPlayerBlessing(cid, 3) or getPlayerBlessing(cid, 4) or getPlayerBlessing(cid, 5) then
return doPlayerSendTextMessage(cid,28, 'You have blessed')
end
doPlayerSendTextMessage(cid,28, 'You dont have bless')
return TRUE
end 