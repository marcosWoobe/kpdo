function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=949,y=953,z=7})
end
doTeleportThing(cid, {x=949,y=953,z=7})
end