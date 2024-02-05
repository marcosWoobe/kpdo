function onUse(cid, item, frompos, item2, topos)

if getPlayerPosition(cid).x < getThingPos(item.uid).x and getPlayerStorageValue(cid, 8888) <= 0 then
doTeleportThing(cid, {x=getThingPos(item.uid).x + 1, y=getThingPos(item.uid).y, z=getThingPos(item.uid).z})

end
return TRUE
end