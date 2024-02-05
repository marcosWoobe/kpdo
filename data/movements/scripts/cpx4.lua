function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1206,y=1116,z=6})
end
doTeleportThing(cid, {x=1206,y=1116,z=6})
end