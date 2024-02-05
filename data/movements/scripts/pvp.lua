local tposx = 7790
local tposy = 7791
local tposz = 7792


local lugar = {
[1059] = {
pos = 1059},
[1065] = {
pos = 1065},
[1209] = {
pos = 1209},
[701] ={
pos = 701},
[1067] ={
pos = 1067},
[724] ={
pos = 724},
[1026] ={
pos = 1026},
[1345] ={
pos = 1345},
}

function onStepIn(cid, item, position, fromPosition)
if not isCreature(cid) then
return true
end
if not isPlayer(cid) then
doTeleportThing(cid, fromPosition)
return true
end
local pos = getCreaturePosition(cid)


setPlayerStorageValue(cid,7790,pos.x)

if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=973,y=1033,z=13})
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, {x=973,y=1033,z=13})


end