function onStepIn(cid, item, position, fromPosition)


doSendMagicEffect(fromPosition, 25)


	
return true
	
end

function onStepOut(cid, item, position, fromPosition)
	doSendMagicEffect(fromPosition, 25)
	return true
end
