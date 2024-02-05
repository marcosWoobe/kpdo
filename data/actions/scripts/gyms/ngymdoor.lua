function onUse(cid, item, frompos, item2, topos)

if getPlayerPosition(cid).y > getThingPos(item.uid).y and getPlayerStorageValue(cid, 8888) <= 0 then
doTeleportThing(cid, {x=getThingPos(item.uid).x, y=getThingPos(item.uid).y - 1, z=getThingPos(item.uid).z})

end
return TRUE
end