function onSay(cid, words, param, channel)
	--ping.getPing(cid,29894,function(cid,_,ping_)
	--	doPlayerSendTextMessage(cid,25,'Your ping is '..ping_..' ms.')
	--end)
--doRemoveCreature(cid)
	doPlayerSendTextMessage(cid,25,""..ping.CheckPing(cid).."")
	return true
end