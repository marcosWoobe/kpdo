function onLook(cid, thing, position, lookDistance)


	

--for rocks = 0, 8 do
--if thing == rocks then
--if rocks == 8 then
--if #getCreatureSummons(cid) >= 1 then
--setCreatureMaxHealth(getCreatureSummons(cid)[1], getCreatureMaxHealth(getCreatureSummons(cid)[1]) + pokes[getCreatureName(getCreatureSummons(cid)[1])].cons)
--doCreatureAddHealth(getCreatureSummons(cid)[1],getCreatureMaxHealth(getCreatureSummons(cid)[1]))doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)
--doSendMagicEffect(getThingPos(cid), 29)
--end
--elseif rocks == 2 then
--doSendMagicEffect(getThingPos(cid), 28)
--if getPlayerStorageValue(cid, 91859) >= 1 then
--local speedskills = getPlayerSkill(cid,2)*10
--doChangeSpeed(cid, -getCreatureSpeed(cid))
--doChangeSpeed(cid, getCreatureBaseSpeed(cid)+speedskills)
--end
--end
--return true
--end

--end






if isPlayer(thing.uid) and getPlayerStorageValue(thing.uid, 91911) >= 1 then
local playerlook = getPlayerStorageValue(thing.uid, 91911)
if isPlayer(playerlook) then
local nick = getCreatureName(playerlook)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see a "..nick.." ,Cam mode on")
end
return false

end



if isMonster(thing.uid) then
if getCreatureName(thing.uid) == "Tall Grass" then
local player = getPlayerStorageValue(thing.uid,1)
if isPlayer(player) then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see a "..getCreatureName(player).." Watch a tv.")
end
return false
end

if isPlayer(getCreatureMaster(thing.uid)) then
local dono = getCreatureMaster(thing.uid)
local nome = getCreatureName(dono)
local poke = string.lower(getCreatureName(thing.uid))
local apelido = getPlayerStorageValue(dono,9000)
local pokemondoido = getPlayerSlotItem(dono, 8)
local catchby = getItemAttribute(pokemondoido.uid, "catchby")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see a "..poke..".("..apelido..")\n It belongs to "..nome..".(catch by "..catchby..")\nHit points: "..getCreatureHealth(thing.uid).."/"..getCreatureMaxHealth(thing.uid)..".")
else
return true
end


return false
end


return true
end