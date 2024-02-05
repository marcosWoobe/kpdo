function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1033,y=1025,z=7})
end
doTeleportThing(cid, {x=1033,y=1025,z=7})
end