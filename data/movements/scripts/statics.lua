function onAddItem(moveitem, tileitem, position, cid)
local nome = getpoke(moveitem.uid)




local calcular = pokesteeee[nome] 


if not calcular then
return true
end


local jatem = getGlobalStorageValue(calcular.st)+1
doBroadcastMessage("New "..nome.."["..jatem.."]", MESSAGE_STATUS_CONSOLE_RED)
setGlobalStorageValue(calcular.st,jatem)


	
	return true
end




