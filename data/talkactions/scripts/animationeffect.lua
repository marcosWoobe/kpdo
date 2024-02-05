function onSay(cid, words, param, channel)
	
	

	local position = getCreaturePosition(cid)
	for i = 1, 175 do
		doSendDistanceShoot(position, {x = position.x + math.random(-7,7), y = position.y + math.random(-5,5), z = position.z}, param)
	end

	return true
end