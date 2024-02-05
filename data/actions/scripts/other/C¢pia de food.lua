local FOODS =
{
	[2667] = {12, "Munch."},
	[2668] = {10, "Mmmm."},
	[2669] = {17, "Munch."},
	[2670] = {4, "Gulp."},
	[2671] = {30, "Chomp."},
	[2672] = {60, "Chomp."},
	[2673] = {5, "Yum."},
	[2674] = {6, "Yum."},
	[2675] = {13, "Yum."},
	[2676] = {8, "Yum."},
	[2677] = {1, "Yum."},
	[2678] = {18, "Slurp."},
	[2679] = {1, "Yum."},
	[2680] = {2, "Yum."},
	[2681] = {9, "Yum."},
	[2682] = {20, "Yum."},
	[2683] = {17, "Munch."},
	[2684] = {8, "Crunch."},
	[2685] = {6, "Munch."},
	[2686] = {9, "Crunch."},
	[2687] = {2, "Crunch."},
	[2688] = {9, "Munch."},
	[2689] = {10, "Crunch."},
	[2690] = {3, "Crunch."},
	[2691] = {8, "Crunch."},
	[2792] = {6, "Munch."},
	[2793] = {9, "Munch."},
	[2695] = {6, "Gulp."},
	[2696] = {9, "Smack."},
	[2787] = {9, "Munch."},
	[2788] = {4, "Munch."},
	[2789] = {22, "Munch."},
	[2790] = {30, "Munch."},
	[2791] = {30, "Munch."},
	[2792] = {6, "Munch."},
	[2794] = {3, "Munch."},
	[2795] = {36, "Munch."},
	[2796] = {5, "Munch."},
	[2793] = {9, "Munch."},
	[5097] = {4, "Yum."},
	[6125] = {8, "Gulp."},
	[6278] = {10, "Mmmm."},
	[6279] = {15, "Mmmm."},
	[6393] = {12, "Mmmm."},
	[6394] = {15, "Mmmm."},
	[6501] = {20, "Mmmm."},
	[6541] = {6, "Gulp."},
	[6542] = {6, "Gulp."},
	[6543] = {6, "Gulp."},
	[6544] = {6, "Gulp."},
	[6545] = {6, "Gulp."},
	[6569] = {1, "Mmmm."},
	[6574] = {4, "Mmmm."},
	[7158] = {15, "Munch."},
	[7159] = {13, "Munch."},
	[7372] = {7, "Yum."},
	[7373] = {7, "Yum."},
	[7374] = {7, "Yum."},
	[7375] = {7, "Yum."},
	[7376] = {7, "Yum."},
	[7377] = {7, "Yum."},
	[7909] = {4, "Crunch."},
	[8838] = {7, "Gulp."},
	[8839] = {5, "Yum."},
	[8840] = {2, "Yum."},
	[8841] = {3, "Urgh."},
	[8842] = {3, "Munch."},
	[8843] = {3, "Crunch."},
	[8844] = {3, "Gulp."},
	[8845] = {2, "Munch."},
	[2107] = {11, "Yum."}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local food = FOODS[item.itemid]
	if(not food) then
		return false
	end



local function heal(params)
	if isCreature(params.item2) then
	if getPlayerStorageValue(params.item2,10) <= 0 then
doSendMagicEffect(getThingPos(params.item2), 172)
setPlayerStorageValue(params.item2, 10, -1)
return true
end
local count = getPlayerStorageValue(params.item2,10)-1
	if getCreatureHealth(params.item2) == getCreatureMaxHealth(params.item2) then
	addEvent(heal, 1000, {item2 = params.item2,rest = count})
return true
	end

local vidamax = getCreatureMaxHealth(params.item2)
	
local regen = vidamax/300
	doCreatureAddHealth(params.item2, regen)

setPlayerStorageValue(params.item2, 10,count )
	addEvent(heal, 1000, {item2 = params.item2,rest = count })

end
	
end
if getPlayerStorageValue(cid,10) >= 400 then
return doPlayerSendCancel(cid, "You are a full.")
elseif getPlayerStorageValue(cid,10) <= 0 then

addEvent(heal, 1000, {item2 = cid,rest = food[1]*4})
setPlayerStorageValue(cid, 10, food[1]*4+1)
else
setPlayerStorageValue(cid, 10, food[1]*4+getPlayerStorageValue(cid,10))
end
	doCreatureSay(cid, food[2], TALKTYPE_ORANGE_1)
	doRemoveItem(item.uid, 1)
	return true
end
