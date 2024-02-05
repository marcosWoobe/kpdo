
local config = {
coin = 42*60,
effect = 53,
text = "Stamina Recovery",
text2 = "Samina full!"

}
function onUse(cid, item, fromPosition, itemEx, toPosition)
if getTileInfo(getCreaturePosition(cid)).protection  then
if getPlayerStamina(cid) ~= config.coin then
doRemoveItem(item.uid, 1)
doPlayerSetStamina(cid, config.coin)
doPlayerSendTextMessage(cid,19,config.text)
doSendMagicEffect(getPlayerPosition(cid), config.effect)
doRemoveCreature(cid)
else
doPlayerSendTextMessage(cid,22,config.text2)
end
else
doPlayerSendTextMessage(cid,22,"You need a go to protection zone to recovery stamina")
end
return true 
end 