local playerA={
{x=111111, y=111111, z=7}, -- Lugar onde o primeiro player vai estar
{x=111112, y=111111, z=7}, -- Lugar onde o segundo player vai estar
{x=111113, y=111111, z=7}, -- Lugar onde o terceiro player vai estar
{x=111114, y=111111, z=7} -- Lugar onde o quarto player vai estar
}
local playerB={
{x=222221, y=111111, z=7}, -- Lugar onde o primeiro player vai aparecer
{x=222222, y=111111, z=7}, -- Lugar onde o segundo player vai aparecer
{x=222223, y=111111, z=7}, -- Lugar onde o terceiro player vai aparecer
{x=222224, y=111111, z=7} -- Lugar onde o quarto player vai aparecer
}

local arenas = {
	[968] = {
		fromPos ={
			{x = 980, y = 1040, z = 2},	--player 1 start pos
			{x = 980, y = 1043, z = 2} --player 2 start pos
											--you can add how much you want, there are no limits
		},
		toPos = {
			{x = 973, y = 1040, z = 3},	--player 1 teleport position
			{x = 970, y = 1040, z = 3} --player 2 teleport position
											--you can add how much you want, there are no limits
		}
	}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
local t = {}
if item.itemid == 1945 then
for i = 1, 2 do
t=getTopCreature(playerA[i]).uid
if t[i] == 0 or not isPlayer(t[i]) then
return doPlayerSendCancel(cid, 'You need 2 players for duel.')
end
end
for i=1, 2 do
if getPlayerStorageValue(t[i], 17001) <= 0 and getPlayerStorageValue(t[i], 17000) <= 0 and getPlayerStorageValue(t[i], 91859) <= 0 then
else
return true
end
end
for i=1, 2 do
if #getCreatureSummons(t[i]) >= 1 then
doTeleportThing(getCreatureSummons(t[i])[1],playerB[i])
end

doTeleportThing(t[i], playerB[i])
doSendMagicEffect(playerA[i], CONST_ME_POFF)
doSendMagicEffect(playerB[i], CONST_ME_ENERGYAREA)

end
doBattleDuel(t[1],t[2],6)
end

return true
end

 

 