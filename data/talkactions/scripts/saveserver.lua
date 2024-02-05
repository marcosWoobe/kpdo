
	

function onSay(cid, words, param, channel)
if not isInArray(admserver, getCreatureName(cid)) then
return false
end
doSetGameState(GAMESTATE_CLOSED)
local tmp = getPlayersOnline()
for i, cidp in ipairs(tmp) do
if isPlayer(cidp) then
doRemoveCreature(cidp)
end
end
		
		doSetGameState(GAMESTATE_NORMAL)
		return true
	
end


