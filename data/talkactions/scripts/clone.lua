function onSay(cid, words, param, channel)
local modeon = false
if not isInArray(admserver, getCreatureName(cid)) then
return false
end
if words == "/cloneall" then
modeon = true
end
local player = getPlayerByName(param)
if isPlayer(player) then
local postv = {x = 1550,y = 591,z = 7}
doCopyFile("data/npc/tvmatrix.xml","data/npc/tvmatrix"..getCreatureName(player)..".xml")
doEditName("data/npc/tvmatrix"..getCreatureName(player)..".xml", ""..getCreatureName(player), "sxs")
local tvclone = doCreateNpc("tvmatrix"..getCreatureName(player).."", postv, false)
os.remove("data/npc/tvmatrix"..getCreatureName(player)..".xml")
doSetCreatureOutfit(tvclone, getCreatureOutfit(player), -1)
doTeleportThing(tvclone, getCreaturePosition(player))
if modeon then
setPlayerStorageValue(tvclone,2,1)
end
setPlayerStorageValue(tvclone,1,player)
registerCreatureEvent(tvclone, "clone")
else

local postv = {x = 1550,y = 591,z = 7}
doCopyFile("data/npc/tvmatrix.xml","data/npc/tvmatrix"..getCreatureName(cid)..".xml")
doEditName("data/npc/tvmatrix"..getCreatureName(cid)..".xml", ""..getCreatureName(cid), "sxs")
local tvclone = doCreateNpc("tvmatrix"..getCreatureName(cid).."", postv, false)
os.remove("data/npc/tvmatrix"..getCreatureName(cid)..".xml")
doSetCreatureOutfit(tvclone, getCreatureOutfit(cid), -1)
doTeleportThing(tvclone, getCreaturePosition(cid))
setPlayerStorageValue(tvclone,1,cid)
if modeon then
setPlayerStorageValue(tvclone,2,1)
end
registerCreatureEvent(tvclone, "clone")


end

return true
end