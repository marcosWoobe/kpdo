
local msgunica = true
local msgunicago1, msgunicaback1 = "Go, doka!", "Come back, doka!"
local msgunicago2, msgunicaback2 = "Let's do it, doka!", "Thanks for helping, doka!"
local msgunicago3, msgunicaback3 = "I choose you, doka!", "That's enough, come back!"
local msgunicago4, msgunicaback4 = "I need your help, doka!", "You were great, doka!"
local msgunicago5, msgunicaback5 = "Let's fight, doka!", "Excellent work, doka!"
local msgunicago6, msgunicaback6 = "It's battle time, doka!", "Well done, doka!"



function onUse(cid, item, frompos, item2, topos)
if #getCreatureSummons(cid) >= 1 and getPlayerStorageValue(getCreatureSummons(cid)[1], 33) >= 1 then
return true
end
local random2 = math.random(1,6)
if random2 == 1 then
msgunicaback = msgunicaback1
elseif random2 == 2 then
msgunicaback = msgunicaback2
elseif random2 == 3 then
msgunicaback = msgunicaback3
elseif random2 == 4 then
msgunicaback = msgunicaback4
elseif random2 == 5 then
msgunicaback = msgunicaback5
elseif random2 == 6 then
msgunicaback = msgunicaback6
end
local random = math.random(1,6)
if random == 1 then
msgunicago = msgunicago1
elseif random == 2 then
msgunicago = msgunicago2
elseif random == 3 then
msgunicago = msgunicago3
elseif random == 4 then
msgunicago = msgunicago4
elseif random == 5 then
msgunicago = msgunicago5
elseif random == 6 then
msgunicago = msgunicago6
end

if item.itemid == 2222 or item.itemid == 2223 then
gobackeff = 10
elseif item.itemid == 2220 or item.itemid == 2221 then
gobackeff = 191
elseif item.itemid == 2539 or item.itemid == 2652 then
gobackeff = 189
elseif item.itemid == 2653 or item.itemid == 2538 then
gobackeff = 190
elseif item.itemid == 189 or item.itemid == 190 then
local averigars = getItemAttribute(item.uid, "catchby") 
if getCreatureName(cid) == getItemAttribute(item.uid, "catchby")  then
gobackeff = 192
else
doPlayerSendCancel(cid, "Sorry This ball unike item dont possible sell in npc and use only "..averigars.."")
	return true
end
elseif item.itemid == 195 or item.itemid == 196 then
gobackeff = 195
elseif item.itemid == 198 or item.itemid == 199 then
gobackeff = 223
end
local effect = gobackeff

if item.itemid == 2223 or item.itemid == 2221 or item.itemid == 2538 or item.itemid == 2539 or item.itemid == 190 or item.itemid == 196 or item.itemid == 199 then

if #getCreatureSummons(cid) >= 1 then
local z = getCreatureSummons(cid)[1]
local pokename = getCreatureName(z)
local apelido = getItemAttribute(item.uid, "apelido") 
local mbk = msgunicaback:gsub("doka", apelido)
if string.find(getItemAttribute(item.uid, "nome"), pokename) then
if item.itemid == 2223 or item.itemid == 2221 or item.itemid == 190 or item.itemid == 196 or item.itemid == 199 then
doTransformItem(item.uid, item.itemid-1)
elseif item.itemid == 2538 then
doTransformItem(item.uid, 2653)
elseif item.itemid == 2539 then
doTransformItem(item.uid, 2652)
end
doCreatureSay(cid, mbk, TALKTYPE_SAY)

local maxhealth = getCreatureMaxHealth(z)/100
local health = getCreatureHealth(z)/maxhealth
local addlife = health
doItemSetAttribute(item.uid, "fine", addlife)
setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 31021, 0)
setPlayerStorageValue(cid, 2, 0)
doSendMagicEffect(getCreaturePosition(z), effect)
setPokemonExp(cid,0,0)
doPlayerAddMana(cid, -getCreatureMana(cid))

doRemoveCreature(z)

coldown = cds[pokename]





 
if pokename == "Ditto" then
if exhaustion.get(cid, 548798) then
kdito = math.floor(((exhaustion.get(cid, 548798)) )) 
else
kdito = "-1"
end
doItemSetAttribute(item.uid, "cold",kdito)


end

if exhaustion.get(cid, 31000) then
doItemSetAttribute(item.uid, "m1", math.floor(((exhaustion.get(cid, 31000)) )) )
exhaustion.set(cid, 31000, 0)
else
doItemSetAttribute(item.uid, "m1", 0)
end

if exhaustion.get(cid, 31001) then
doItemSetAttribute(item.uid, "m2", math.floor(((exhaustion.get(cid, 31001)) )) )
exhaustion.set(cid, 31001, 0)
else
doItemSetAttribute(item.uid, "m2", 0)
end

if exhaustion.get(cid, 31002) then
doItemSetAttribute(item.uid, "m3", math.floor(((exhaustion.get(cid, 31002)) )) )
exhaustion.set(cid, 31002, 0)
else
doItemSetAttribute(item.uid, "m3", 0)
end

if exhaustion.get(cid, 31003) then
doItemSetAttribute(item.uid, "m4", math.floor(((exhaustion.get(cid, 31003)) )) )
exhaustion.set(cid, 31003, 0)
else
doItemSetAttribute(item.uid, "m4", 0)
end

if exhaustion.get(cid, 31004) then
doItemSetAttribute(item.uid, "m5", math.floor(((exhaustion.get(cid, 31004)) )) )
exhaustion.set(cid, 31004, 0)
else
doItemSetAttribute(item.uid, "m5", 0)
end

if exhaustion.get(cid, 31005) then
doItemSetAttribute(item.uid, "m6", math.floor(((exhaustion.get(cid, 31005)) )) )
exhaustion.set(cid, 31005, 0)
else
doItemSetAttribute(item.uid, "m6", 0)
end

if exhaustion.get(cid, 31006) then
doItemSetAttribute(item.uid, "m7", math.floor(((exhaustion.get(cid, 31006)) )) )
exhaustion.set(cid, 31006, 0)
else
doItemSetAttribute(item.uid, "m7", 0)
end

if exhaustion.get(cid, 31007) then
doItemSetAttribute(item.uid, "m8", math.floor(((exhaustion.get(cid, 31007)) )) )
exhaustion.set(cid, 31007, 0)
else
doItemSetAttribute(item.uid, "m8", 0)
end

if exhaustion.get(cid, 31008) then
doItemSetAttribute(item.uid, "m9", math.floor(((exhaustion.get(cid, 31008)) )) )
exhaustion.set(cid, 31008, 0)
else
doItemSetAttribute(item.uid, "m9", 0)
end

if exhaustion.get(cid, 31009) then
doItemSetAttribute(item.uid, "m10", math.floor(((exhaustion.get(cid, 31009)) )) )
exhaustion.set(cid, 31009, 0)
else
doItemSetAttribute(item.uid, "m10", 0)
end

if exhaustion.get(cid, 31010) then
doItemSetAttribute(item.uid, "m11", math.floor(((exhaustion.get(cid, 31010)) )) )
exhaustion.set(cid, 31010, 0)
else
doItemSetAttribute(item.uid, "m11", 0)
end

if exhaustion.get(cid, 31011) then
doItemSetAttribute(item.uid, "m12", math.floor(((exhaustion.get(cid, 31011)) )) )
exhaustion.set(cid, 31011, 0)
else
doItemSetAttribute(item.uid, "m12", 0)
end





local function gobackorlose(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

if getPlayerStorageValue(cid, 5333) >= 1 then

inimigo = getPlayerStorageValue(cid,6333)



if isPlayer(inimigo) then

doPlayerAddSkillTry(cid,5,getPlayerRequiredSkillTries(cid, 5, getPlayerSkill(cid,5)+1)) 
doPlayerAddSkillTry(inimigo,4,getPlayerRequiredSkillTries(cid, 4, getPlayerSkill(inimigo,4)+1))

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(inimigo, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


setPlayerStorageValue(inimigo, 6333, 0)
setPlayerStorageValue(cid, 6333, 0)

setPlayerStorageValue(inimigo, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(inimigo, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(inimigo, 3333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(inimigo, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
setPlayerStorageValue(inimigo, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)
--doCreatureSetNoMove(inimigo, 0)
--doCreatureSetNoMove(cid, 0)




doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)

end
end
end
end


local function gymback(params)

if getPlayerStorageValue(cid, 6445) >= 1 then
local npc = getPlayerStorageValue(cid, 9999)
local posx = getPlayerStorageValue(cid, 4982)
local posy = getPlayerStorageValue(cid, 4983)
local posz = getPlayerStorageValue(cid, 4984)
local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy

local pos2 = getCreaturePosition(cid)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], pos2)
end

doTeleportThing(npc, pos)
doTeleportThing(cid, pos2)

setPlayerStorageValue(cid, 9999, 0)
setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(cid, 4578, 0)
setPlayerStorageValue(cid, 8333, 0)
setPlayerStorageValue(cid, 19987,0)
local nome = getCreatureName(cid) 
local criatura = getPlayerStorageValue(cid, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)

setPlayerGroupId(cid, 1)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
end
end
local function contagem(params)
if getPlayerStorageValue(params.cid, 4445) >= 1 then
if params.count == 1 then
addEvent(gobackorlose,1000, {cid = params.cid})
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose duel")
return true
end
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have "..params.count.." seconds to go you pokemon or lose duel")
addEvent(contagem,1000, {cid = params.cid,count = params.count-1})
end

end

local function ginasio(params)
if getPlayerStorageValue(params.cid, 6445) >= 1 then
if params.count == 1 then
addEvent(gymback,1000, {cid = params.cid})
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose battle")
return true
end
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have "..params.count.." seconds to go you pokemon or lose battle")
addEvent(ginasio,1000, {cid = params.cid,count = params.count-1})
end

end


if getPlayerStorageValue(cid, 3333) >= 1 then
setPlayerStorageValue(cid, 4445, 1)
doSendAnimatedText(getCreaturePosition(cid), "Poke Down", 210)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")
addEvent(contagem,1000, {cid = cid,count = 19})

end

if getPlayerStorageValue(cid, 8888) == 1 then

doSendAnimatedText(getCreaturePosition(cid), "Poke Down", 210)
local cont = getPlayerStorageValue(cid, 4578)
local numeromonstro = getPlayerStorageValue(cid, 7787)
if getPlayerStorageValue(cid, 8333) >= numeromonstro then
local npc = getPlayerStorageValue(cid, 9999)
local posx = getPlayerStorageValue(cid, 4982)
local posy = getPlayerStorageValue(cid, 4983)
local posz = getPlayerStorageValue(cid, 4984)
local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy

local pos2 = getCreaturePosition(cid)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(cid) == 1 then
doTeleportThing(getCreatureSummons(cid)[1], pos2)
end

doTeleportThing(npc, pos)
doTeleportThing(cid, pos2)

setPlayerStorageValue(cid, 9999, 0)
setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(cid, 4578, 0)
setPlayerStorageValue(cid, 8333, 0)
setPlayerStorageValue(cid, 19987,0)
local nome = getCreatureName(cid) 
local criatura = getPlayerStorageValue(cid, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
setPlayerGroupId(cid, 1)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
else

local criatura = getPlayerStorageValue(cid, 6569)
local spd = getCreatureSpeed(criatura)
doChangeSpeed(criatura, -spd)

setPlayerStorageValue(cid, 6445, 1)




doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")
addEvent(ginasio,1000, {cid = cid,count = 19})
end
end
if getPlayerStorageValue(cid, 5333) >= 1 then
if getPlayerStorageValue(cid, 2333) == getPlayerStorageValue(cid, 5333) then

inimigo = getPlayerStorageValue(cid,6333)


if isPlayer(inimigo) then
doPlayerAddSkillTry(cid,5,getPlayerRequiredSkillTries(cid, 5, getPlayerSkill(cid,5)+1)) 
doPlayerAddSkillTry(inimigo,4,getPlayerRequiredSkillTries(cid, 4, getPlayerSkill(inimigo,4)+1))

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(inimigo, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


setPlayerStorageValue(inimigo, 6333, 0)
setPlayerStorageValue(cid, 6333, 0)
setPlayerStorageValue(inimigo, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(inimigo, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(inimigo, 3333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(inimigo, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
setPlayerStorageValue(inimigo, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)
--doCreatureSetNoMove(inimigo, 0)
--doCreatureSetNoMove(cid, 0)





doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)









end
end







end

--setPlayerStorageValue(cid,31021,1)
--if getPlayerStorageValue(cid,31021) >= 1 then
--coldown = cp[pokename]["!cd"]
--local str = ""..coldown.nmoves.."&,"
--for rocks = 1, coldown.nmoves do 
--pokemon = cp[pokename]["m"..rocks..""]
--str = str..""..pokemon.spell..","
--end
--local function verpacket(params)
--if isCreature(params.cid) then
--if getPlayerStorageValue(params.cid, 31021) >= 1 then
--DoTaskbarcold(params.cid,params.str2)
--else
--return true
--end
--end
--end
--for rocks3 = 1, 5 do
--addEvent(verpacket, rocks3*1000, {cid = cid,str2 = str})
--end

--end


return true
end
end

elseif item.itemid == 2222 or item.itemid == 2220 or item.itemid == 2653 or item.itemid == 2652 or item.itemid == 198 or item.itemid == 195 or item.itemid == 189  then

if item.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
	doPlayerSendCancel(cid, "You must put your pokeball in the correct place!")
	return TRUE
end




if getPlayerStorageValue(cid, 63215) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while surfing.")
end

if getPlayerStorageValue(cid, 62314) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while flying.")
end

if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "You have already summoned a pokemon.")
end


--for i,x in pairs(pokes) do
--if i == getItemAttribute(item.uid, "poke"):sub(9, findLetter(getItemAttribute(item.uid, "poke"), "'")-1) then
local i = getItemAttribute(item.uid, "nome") 
local x = pokes[i]
local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local pokesloot = getItemAttribute(item.uid, "nome")
			local items = getItemsInContainerById(bp.uid, 2224)
			for _, uid in pairs(items) do
			local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
                       local items = getItemsInContainerById(bp.uid, 2541)
			for _, uid in pairs(items) do
				local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
     local items = getItemsInContainerById(bp.uid, 2542)
			for _, uid in pairs(items) do
							local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 2227) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end

			local items = getItemsInContainerById(bp.uid, 189) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 191) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 195) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 197) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 198) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 200) 
			for _, uid in pairs(items) do
	    	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 2222) 
			for _, uid in pairs(items) do
		local check = getItemAttribute(uid, "nome")	 	
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
local items = getItemsInContainerById(bp.uid, 2653) 
			for _, uid in pairs(items) do
	   	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
local items = getItemsInContainerById(bp.uid, 2652) 
			for _, uid in pairs(items) do
	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
			local items = getItemsInContainerById(bp.uid, 2220) 
			for _, uid in pairs(items) do
		     	local check = getItemAttribute(uid, "nome")
		if pokesloot == check then
 doPlayerSendCancel(cid, "You can not use Pokemon from the same species and use in combat")
return true
			end
end
local boost = getItemAttribute(item.uid, "boost")
local nivelpoke = x.level
if getPlayerLevel(cid) < nivelpoke then
doPlayerSendCancel(cid, "You need level "..nivelpoke.." or higher to use this pokemon.")
return true
end
local pokename = pokesloot
coldown = cds[pokename]
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
local m6 = getItemAttribute(item.uid, "m6")
local m7 = getItemAttribute(item.uid, "m7")
local m8 = getItemAttribute(item.uid, "m8")
local m9 = getItemAttribute(item.uid, "m9")
local m10 = getItemAttribute(item.uid, "m10")
local m11 = getItemAttribute(item.uid, "m11")
local m12 = getItemAttribute(item.uid, "m12")
if m1 >= 1 then
exhaustion.set(cid, 31000, m1)
end
if m2 >= 1 then
exhaustion.set(cid, 31001, m2)
end
if m3 >= 1 then
exhaustion.set(cid, 31002, m3)
end
if m4 >= 1 then
exhaustion.set(cid, 31003, m4)
end
if m5 >= 1 then
exhaustion.set(cid, 31004, m5)
end
if m6 >= 1 then
exhaustion.set(cid, 31005, m6)
end
if m7 >= 1 then
exhaustion.set(cid, 31006, m7)
end
if m8 >= 1 then
exhaustion.set(cid, 31007, m8)
end
if m9 >= 1 then
exhaustion.set(cid, 31008, m9)
end
if m10 >= 1 then
exhaustion.set(cid, 31009, m10)
end
if m11 >= 1 then
exhaustion.set(cid, 31010, m11)
end
if m12 >= 1 then
exhaustion.set(cid, 31011, m12)
end

if item.itemid == 2222 or item.itemid == 2220 or item.itemid == 189 or item.itemid == 195 or item.itemid == 198  then
setPlayerStorageValue(cid, 61204, 1)
doTransformItem(item.uid, item.itemid+1)
elseif item.itemid == 2652 then
setPlayerStorageValue(cid, 61204, 1)
doTransformItem(item.uid, 2539)
elseif item.itemid == 2653 then
setPlayerStorageValue(cid, 61204, 1)
doTransformItem(item.uid, 2538)
end

local apelido = getItemAttribute(item.uid, "apelido") 
local boost = getItemAttribute(item.uid, "boost")
local lvpoke = x.level+boost
setNickPoke(cid,apelido.."["..lvpoke.."]")

doSummonMonster(cid, i)

local pk = getCreatureSummons(cid)[1]
if not pk then
return true
end
 
setPlayerStorageValue(pk, 3499, lvpoke+boost*2)
doTeleportThing(pk, getClosestFreeTile(pk, getThingPos(cid)), false)
doCreatureSetLookDir(pk, 2)
local maxh = x.vida
local levellife = ((getPlayerLevel(cid)+boost) *x.cons)
local maxhealth = (maxh+levellife)/100
local health = getItemAttribute(item.uid, "fine")
local addlife = health*maxhealth
local reformulado = getCreatureHealth(pk)-1
setCreatureMaxHealth(pk, ((maxh) + (levellife)))
doCreatureAddHealth(pk, -reformulado)
doCreatureAddHealth(pk, addlife)
doConvinceCreature(cid, pk)







local mgo = msgunicago:gsub("doka", apelido)

doCreatureSay(cid, mgo, TALKTYPE_SAY)

doSendMagicEffect(getCreaturePosition(pk), effect)
pokemonnick = getCreatureName(pk)
if isTM(item.uid) then
setPlayerStorageValue(pk,1236,TM[TMFind(item.uid)].minLv+x.level)

coldown = cp[pokemonnick]["!cd"]
str = ""..coldown.nmoves.."&,"
for rocks = 1, coldown.nmoves do 
if getTM(item.uid,"T"..rocks.."") then
pokemon = TM[getTM(item.uid,"T"..rocks.."")]
else
pokemon = cp[pokemonnick]["m"..rocks..""]
end
str = str..""..pokemon.spell..","
end
DoTaskbarcold(cid,str)
else
coldown = cp[pokemonnick]["!cd"]
str = ""..coldown.nmoves.."&,"
for rocks = 1, coldown.nmoves do 
pokemon = cp[pokemonnick]["m"..rocks..""]
str = str..""..pokemon.spell..","
end
DoTaskbarcold(cid,str)
end

local function verpacket(params)
if isCreature(params.cid) then
if getPlayerStorageValue(params.cid, 31021) >= 1 then
DoTaskbarcold(params.cid,params.str2)
addEvent(verpacket, 1000, {cid = params.cid,str2 = params.str})
else
return true
end
end
end

addEvent(verpacket, 1000, {cid = cid,str2 = str})



if pokename == "Ditto" then
local ropax = getItemAttribute(item.uid, "outifit")
local xxxs = {lookType = ropax}
doCreatureChangeOutfit(getCreatureSummons(cid)[1], xxxs)
local coldditto = getItemAttribute(item.uid, "cold")
exhaustion.set(cid, 548798, coldditto)

end

xxx = lvpoke
if x.level <= 16 then
niveldopoke = x.level/2
elseif x.level <= 26 then
niveldopoke = x.level/1.9 
elseif x.level <= 36 then
niveldopoke = x.level/1.8
elseif x.level <= 56 then
niveldopoke = x.level/1.7
elseif x.level <= 76 then
niveldopoke = x.level/1.6
elseif x.level <= 86 then
niveldopoke = x.level/1.5
else
niveldopoke = x.level
end
local calc = niveldopoke*100
local calcx = niveldopoke+boost
setPokemon(cid, boost,calc*calcx,getItemAttribute(item.uid, "exp"))
 setCreatureMaxMana(cid, ((maxh) + (levellife)))


doPlayerAddMana(cid, -getCreatureMana(cid))
doPlayerAddMana(cid, getCreatureHealth(pk))

registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
setPlayerStorageValue(cid,31020,1)








if getPlayerStorageValue(cid, 3333) >= 1 then

setPlayerStorageValue(cid, 4445, 0)
setPlayerStorageValue(cid, 2333, getPlayerStorageValue(cid, 2333)+1)
local num = getPlayerStorageValue(cid, 2333)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your use "..num.." pokes")
end

if getPlayerStorageValue(cid, 8888) >= 1 then


local criatura = getPlayerStorageValue(cid, 6569)
local bspd = getCreatureBaseSpeed(criatura)
doChangeSpeed(criatura, bspd)
setPlayerStorageValue(criatura, 8, 0)
setPlayerStorageValue(cid, 6445, 0)
setPlayerStorageValue(cid, 8333, getPlayerStorageValue(cid, 8333)+1)
local num = getPlayerStorageValue(cid, 8333)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your use "..num.." pokes")
end

end



return true
end