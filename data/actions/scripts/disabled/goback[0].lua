
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
if getItemAttribute(item.uid, "poke"):find(getCreatureName(z)) then
if item.itemid == 2223 or item.itemid == 2221 or item.itemid == 190 or item.itemid == 196 or item.itemid == 199 then
doTransformItem(item.uid, item.itemid-1)
elseif item.itemid == 2538 then
doTransformItem(item.uid, 2653)
elseif item.itemid == 2539 then
doTransformItem(item.uid, 2652)
end
doCreatureSay(cid, mbk, TALKTYPE_SAY)
local summom = getCreatureSummons(cid)
local nivelpoke = pokes[getCreatureName(summom[1])]
local maxh = nivelpoke.vida
local pct2 = ((getCreatureHealth(summom[1])) / (getCreatureMaxHealth(summom[1])))
local vids = ((getCreatureHealth(summom[1])) - 2)
doCreatureAddHealth(summom[1], -vids)
setCreatureMaxHealth(summom[1], maxh)
doCreatureAddHealth(summom[1], ((maxh) * (pct2)))
doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"):sub(1, findLetter(getItemAttribute(item.uid, "poke"), ".")) .. " HP = ["..getCreatureHealth(z).."/"..getCreatureMaxHealth(z).."]")

setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 31021, 0)
setPlayerStorageValue(cid, 2, 0)
doSendMagicEffect(getCreaturePosition(z), effect)

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



if coldown.moves.nmoves == 1 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
exhaustion.set(cid, coldown.moves.exm1, '0')

elseif coldown.moves.nmoves == 2 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) )) 

else
seconds2 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')

elseif coldown.moves.nmoves == 3 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) )) 

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) ))

else
seconds3 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
elseif coldown.moves.nmoves == 4 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) )) 

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) ))
 
else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
elseif coldown.moves.nmoves == 5 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) )) 

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
elseif coldown.moves.nmoves == 6 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))
 
else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))

else
seconds6 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
elseif coldown.moves.nmoves == 7 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))
  
else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 

else
seconds7 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
elseif coldown.moves.nmoves == 8 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 
 
else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 
 
else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))

else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 

else
seconds7 = "0"
end
if exhaustion.get(cid, coldown.moves.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, coldown.moves.exm8)) )) 

else
seconds8 = "0"
end

doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
doItemSetAttribute(item.uid, "m8", seconds8)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
exhaustion.set(cid, coldown.moves.exm8, '0')
elseif coldown.moves.nmoves == 9 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))

else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))
 
else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 

else
seconds7 = "0"
end
if exhaustion.get(cid, coldown.moves.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, coldown.moves.exm8)) )) 

else
seconds8 = "0"
end
if exhaustion.get(cid, coldown.moves.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, coldown.moves.exm9)) )) 

else
seconds9 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
doItemSetAttribute(item.uid, "m8", seconds8)
doItemSetAttribute(item.uid, "m9", seconds9)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
exhaustion.set(cid, coldown.moves.exm8, '0')
exhaustion.set(cid, coldown.moves.exm9, '0')

elseif coldown.moves.nmoves == 10 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))
 
else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))
 
else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 

else
seconds7 = "0"
end
if exhaustion.get(cid, coldown.moves.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, coldown.moves.exm8)) )) 

else
seconds8 = "0"
end
if exhaustion.get(cid, coldown.moves.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, coldown.moves.exm9)) )) 

else
seconds9 = "0"
end
if exhaustion.get(cid, coldown.moves.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, coldown.moves.exm10)) )) 

else
seconds10 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
doItemSetAttribute(item.uid, "m8", seconds8)
doItemSetAttribute(item.uid, "m9", seconds9)
doItemSetAttribute(item.uid, "m10", seconds10)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
exhaustion.set(cid, coldown.moves.exm8, '0')
exhaustion.set(cid, coldown.moves.exm9, '0')
exhaustion.set(cid, coldown.moves.exm10, '0')
elseif coldown.moves.nmoves == 11 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))
 
else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 
 
else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))

else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 
 
else
seconds7 = "0"
end
if exhaustion.get(cid, coldown.moves.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, coldown.moves.exm8)) )) 
 
else
seconds8 = "0"
end
if exhaustion.get(cid, coldown.moves.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, coldown.moves.exm9)) )) 

else
seconds9 = "0"
end
if exhaustion.get(cid, coldown.moves.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, coldown.moves.exm10)) )) 

else
seconds10 = "0"
end
if exhaustion.get(cid, coldown.moves.exm11) then
seconds11 = math.floor(((exhaustion.get(cid, coldown.moves.exm11)) )) 

else
seconds11 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
doItemSetAttribute(item.uid, "m8", seconds8)
doItemSetAttribute(item.uid, "m9", seconds9)
doItemSetAttribute(item.uid, "m10", seconds10)
doItemSetAttribute(item.uid, "m11", seconds11)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
exhaustion.set(cid, coldown.moves.exm8, '0')
exhaustion.set(cid, coldown.moves.exm9, '0')
exhaustion.set(cid, coldown.moves.exm10, '0')
exhaustion.set(cid, coldown.moves.exm11, '0')
elseif coldown.moves.nmoves == 12 then
if exhaustion.get(cid, coldown.moves.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, coldown.moves.exm1)) )) 

else
seconds1 = "0"
end
if exhaustion.get(cid, coldown.moves.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, coldown.moves.exm2)) ))
 
else
seconds2 = "0"
end
if exhaustion.get(cid, coldown.moves.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, coldown.moves.exm3)) )) 

else
seconds3 = "0"
end
if exhaustion.get(cid, coldown.moves.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, coldown.moves.exm4)) )) 

else
seconds4 = "0"
end
if exhaustion.get(cid, coldown.moves.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, coldown.moves.exm5)) )) 

else
seconds5 = "0"
end
if exhaustion.get(cid, coldown.moves.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, coldown.moves.exm6)) ))
 
else
seconds6 = "0"
end
if exhaustion.get(cid, coldown.moves.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, coldown.moves.exm7)) )) 

else
seconds7 = "0"
end
if exhaustion.get(cid, coldown.moves.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, coldown.moves.exm8)) )) 

else
seconds8 = "0"
end
if exhaustion.get(cid, coldown.moves.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, coldown.moves.exm9)) )) 

else
seconds9 = "0"
end
if exhaustion.get(cid, coldown.moves.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, coldown.moves.exm10)) )) 

else
seconds10 = "0"
end
if exhaustion.get(cid, coldown.moves.exm11) then
seconds11 = math.floor(((exhaustion.get(cid, coldown.moves.exm11)) )) 

else
seconds11 = "0"
end
if exhaustion.get(cid, coldown.moves.exm12) then
seconds12 = math.floor(((exhaustion.get(cid, coldown.moves.exm12)) )) 

else
seconds12 = "0"
end
doItemSetAttribute(item.uid, "m1", seconds1)
doItemSetAttribute(item.uid, "m2", seconds2)
doItemSetAttribute(item.uid, "m3", seconds3)
doItemSetAttribute(item.uid, "m4", seconds4)
doItemSetAttribute(item.uid, "m5", seconds5)
doItemSetAttribute(item.uid, "m6", seconds6)
doItemSetAttribute(item.uid, "m7", seconds7)
doItemSetAttribute(item.uid, "m8", seconds8)
doItemSetAttribute(item.uid, "m9", seconds9)
doItemSetAttribute(item.uid, "m10", seconds10)
doItemSetAttribute(item.uid, "m11", seconds11)
doItemSetAttribute(item.uid, "m12", seconds12)
exhaustion.set(cid, coldown.moves.exm1, '0')
exhaustion.set(cid, coldown.moves.exm2, '0')
exhaustion.set(cid, coldown.moves.exm3, '0')
exhaustion.set(cid, coldown.moves.exm4, '0')
exhaustion.set(cid, coldown.moves.exm5, '0')
exhaustion.set(cid, coldown.moves.exm6, '0')
exhaustion.set(cid, coldown.moves.exm7, '0')
exhaustion.set(cid, coldown.moves.exm8, '0')
exhaustion.set(cid, coldown.moves.exm9, '0')
exhaustion.set(cid, coldown.moves.exm10, '0')
exhaustion.set(cid, coldown.moves.exm11, '0')
exhaustion.set(cid, coldown.moves.exm12, '0')
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

local function contagem19(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose duel")
addEvent(gobackorlose,1000, cid)
end

end

local function contagem18(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 2 seconds to go you pokemon or lose duel")
addEvent(contagem19,1000, cid)
end

end

local function contagem17(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 3 seconds to go you pokemon or lose duel")
addEvent(contagem18,1000, cid)
end

end

local function contagem16(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 4 seconds to go you pokemon or lose duel")
addEvent(contagem17,1000, cid)
end

end
local function contagem15(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose duel")
addEvent(contagem16,1000, cid)
end

end

local function contagem14(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 6 seconds to go you pokemon or lose duel")
addEvent(contagem15,1000, cid)
end

end

local function contagem13(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 7 seconds to go you pokemon or lose duel")
addEvent(contagem14,1000, cid)
end

end


local function contagem12(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 8 seconds to go you pokemon or lose duel")
addEvent(contagem13,1000, cid)
end

end


local function contagem11(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 9 seconds to go you pokemon or lose duel")
addEvent(contagem12,1000, cid)
end

end

local function contagem10(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 10 seconds to go you pokemon or lose duel")
addEvent(contagem11,1000, cid)
end

end

local function contagem9(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 11 seconds to go you pokemon or lose duel")
addEvent(contagem10,1000, cid)
end

end

local function contagem8(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 12 seconds to go you pokemon or lose duel")
addEvent(contagem9,1000, cid)
end

end

local function contagem7(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 13 seconds to go you pokemon or lose duel")
addEvent(contagem8,1000, cid)
end

end

local function contagem6(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 14 seconds to go you pokemon or lose duel")
addEvent(contagem7,1000, cid)
end

end


local function contagem5(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose duel")
addEvent(contagem6,1000, cid)
end

end

local function contagem4(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 16 seconds to go you pokemon or lose duel")
addEvent(contagem5,1000, cid)

end
end

local function contagem3(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 17 seconds to go you pokemon or lose duel")
addEvent(contagem4,1000, cid)
end

end

local function contagem2(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 18 seconds to go you pokemon or lose duel")
addEvent(contagem3,1000, cid)
end

end
local function contagem(params)
if getPlayerStorageValue(cid, 4445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 19 seconds to go you pokemon or lose duel")
addEvent(contagem2,1000, cid)
end

end

local function ginasio19(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose battle")
addEvent(gymback,1000, cid)
end

end

local function ginasio18(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 2 seconds to go you pokemon or lose battle")
addEvent(ginasio19,1000, cid)
end

end

local function ginasio17(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 3 seconds to go you pokemon or lose battle")
addEvent(ginasio18,1000, cid)
end

end

local function ginasio16(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 4 seconds to go you pokemon or lose battle")
addEvent(ginasio17,1000, cid)
end

end
local function ginasio15(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose battle")
addEvent(ginasio16,1000, cid)
end

end


local function ginasio14(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 6 seconds to go you pokemon or lose battle")
addEvent(ginasio15,1000, cid)
end

end

local function ginasio13(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 7 seconds to go you pokemon or lose battle")
addEvent(ginasio14,1000, cid)
end

end


local function ginasio12(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 8 seconds to go you pokemon or lose battle")
addEvent(ginasio13,1000, cid)
end

end


local function ginasio11(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 9 seconds to go you pokemon or lose battle")
addEvent(ginasio12,1000, cid)
end

end

local function ginasio10(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 10 seconds to go you pokemon or lose battle")
addEvent(ginasio11,1000, cid)
end

end


local function ginasio9(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 11 seconds to go you pokemon or lose battle")
addEvent(ginasio10,1000, cid)
end

end

local function ginasio8(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 12 seconds to go you pokemon or lose battle")
addEvent(ginasio9,1000, cid)
end

end

local function ginasio7(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 13 seconds to go you pokemon or lose battle")
addEvent(ginasio8,1000, cid)
end

end

local function ginasio6(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 14 seconds to go you pokemon or lose battle")
addEvent(ginasio7,1000, cid)
end

end

local function ginasio5(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose battle")
addEvent(ginasio6,1000, cid)
end

end

local function ginasio4(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 16 seconds to go you pokemon or lose battle")
addEvent(ginasio5,1000, cid)
end

end

local function ginasio3(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 17 seconds to go you pokemon or lose battle")
addEvent(ginasio4,1000, cid)
end

end

local function ginasio2(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 18 seconds to go you pokemon or lose battle")
addEvent(ginasio3,1000, cid)
end

end
local function ginasio(params)
if getPlayerStorageValue(cid, 6445) >= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 19 seconds to go you pokemon or lose battle")
addEvent(ginasio2,1000, cid)
end

end

if getPlayerStorageValue(cid, 3333) >= 1 then
setPlayerStorageValue(cid, 4445, 1)
doSendAnimatedText(getCreaturePosition(cid), "Poke Down", 210)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")
addEvent(contagem,1000, cid)

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
addEvent(ginasio,1000, cid)
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
local nivelpoke = x.level+boost
if getPlayerLevel(cid) < nivelpoke then
doPlayerSendCancel(cid, "You need level "..nivelpoke.." or higher to use this pokemon.")
return true
end
local pokename = pokesloot
coldown = cds[pokename]



if coldown.moves.nmoves == 1 then
local m1 = getItemAttribute(item.uid, "m1")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end



elseif coldown.moves.nmoves == 2 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end


elseif coldown.moves.nmoves == 3 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end


elseif coldown.moves.nmoves == 4 then


local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end


elseif coldown.moves.nmoves == 5 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end


elseif coldown.moves.nmoves == 6 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
local m6 = getItemAttribute(item.uid, "m6")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end


elseif coldown.moves.nmoves == 7 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
local m6 = getItemAttribute(item.uid, "m6")
local m7 = getItemAttribute(item.uid, "m7")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end


elseif coldown.moves.nmoves == 8 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
local m6 = getItemAttribute(item.uid, "m6")
local m7 = getItemAttribute(item.uid, "m7")
local m8 = getItemAttribute(item.uid, "m8")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end
if m8 > 1 then
exhaustion.set(cid, coldown.moves.exm8, m8)
exhaustion.set(cid, 31007, m8)
end


elseif coldown.moves.nmoves == 9 then
local m1 = getItemAttribute(item.uid, "m1")
local m2 = getItemAttribute(item.uid, "m2")
local m3 = getItemAttribute(item.uid, "m3")
local m4 = getItemAttribute(item.uid, "m4")
local m5 = getItemAttribute(item.uid, "m5")
local m6 = getItemAttribute(item.uid, "m6")
local m7 = getItemAttribute(item.uid, "m7")
local m8 = getItemAttribute(item.uid, "m8")
local m9 = getItemAttribute(item.uid, "m9")
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end

if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end
if m8 > 1 then
exhaustion.set(cid, coldown.moves.exm8, m8)
exhaustion.set(cid, 31007, m8)
end
if m9 > 1 then
exhaustion.set(cid, coldown.moves.exm9, m9)
exhaustion.set(cid, 31008, m9)
end
elseif coldown.moves.nmoves == 10 then
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
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end
if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end
if m8 > 1 then
exhaustion.set(cid, coldown.moves.exm8, m8)
exhaustion.set(cid, 31007, m8)
end
if m9 > 1 then
exhaustion.set(cid, coldown.moves.exm9, m9)
exhaustion.set(cid, 31008, m9)
end
if m10 > 1 then
exhaustion.set(cid, coldown.moves.exm10, m10)
exhaustion.set(cid, 31009, m10)
end
elseif coldown.moves.nmoves == 11 then
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
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end
if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end
if m8 > 1 then
exhaustion.set(cid, coldown.moves.exm8, m8)
exhaustion.set(cid, 31007, m8)
end
if m9 > 1 then
exhaustion.set(cid, coldown.moves.exm9, m9)
exhaustion.set(cid, 31008, m9)
end
if m10 > 1 then
exhaustion.set(cid, coldown.moves.exm10, m10)
exhaustion.set(cid, 31009, m10)
end
if m11 > 1 then
exhaustion.set(cid, coldown.moves.exm11, m11)
exhaustion.set(cid, 31010, m11)
end
elseif coldown.moves.nmoves == 12 then
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
if m1 > 1 then
exhaustion.set(cid, coldown.moves.exm1, m1)
exhaustion.set(cid, 31000, m1)
end
if m2 > 1 then
exhaustion.set(cid, coldown.moves.exm2, m2)
exhaustion.set(cid, 31001, m2)
end
if m3 > 1 then
exhaustion.set(cid, coldown.moves.exm3, m3)
exhaustion.set(cid, 31002, m3)
end
if m4 > 1 then
exhaustion.set(cid, coldown.moves.exm4, m4)
exhaustion.set(cid, 31003, m4)
end
if m5 > 1 then
exhaustion.set(cid, coldown.moves.exm5, m5)
exhaustion.set(cid, 31004, m5)
end
if m6 > 1 then
exhaustion.set(cid, coldown.moves.exm6, m6)
exhaustion.set(cid, 31005, m6)
end
if m7 > 1 then
exhaustion.set(cid, coldown.moves.exm7, m7)
exhaustion.set(cid, 31006, m7)
end
if m8 > 1 then
exhaustion.set(cid, coldown.moves.exm8, m8)
exhaustion.set(cid, 31007, m8)
end
if m9 > 1 then
exhaustion.set(cid, coldown.moves.exm9, m9)
exhaustion.set(cid, 31008, m9)
end
if m10 > 1 then
exhaustion.set(cid, coldown.moves.exm10, m10)
exhaustion.set(cid, 31009, m10)
end
if m11 > 1 then
exhaustion.set(cid, coldown.moves.exm11, m11)
exhaustion.set(cid, 31010, m11)
end
if m12 > 1 then
exhaustion.set(cid, coldown.moves.exm12, m12)
exhaustion.set(cid, 31011, m12)
end
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
setPlayerStorageValue(cid, 9000, ""..apelido.."["..lvpoke.."]")

doSummonMonster(cid, i)

local pk = getCreatureSummons(cid)[1]
if not pk then
return true
end
 
setPlayerStorageValue(pk, 3499, lvpoke*2)
doTeleportThing(pk, getClosestFreeTile(pk, getThingPos(cid)), false)
doCreatureSetLookDir(pk, 2)
local maxh = x.vida
local levellife = ((getPlayerLevel(cid)+boost) *x.cons)
local health = tonumber(getItemAttribute(item.uid, "poke"):match("%[(.-)/"))
doConvinceCreature(cid, pk)

doCreatureAddHealth(pk, health-maxh)

local pct = ((getCreatureHealth(pk)) / (getCreatureMaxHealth(pk)))
local vidis = (getCreatureHealth(pk))
setCreatureMaxHealth(pk, ((maxh) + (levellife)))
doCreatureAddHealth(pk, 2)
doCreatureAddHealth(pk, -vidis)
doCreatureAddHealth(pk, ((getCreatureMaxHealth(pk)) * (pct)) - 2)








local mgo = msgunicago:gsub("doka", apelido)

doCreatureSay(cid, mgo, TALKTYPE_SAY)

doSendMagicEffect(getCreaturePosition(pk), effect)



if pokename == "Ditto" then
local ropax = getItemAttribute(item.uid, "outifit")
local xxxs = {lookType = ropax, lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}
doCreatureChangeOutfit(getCreatureSummons(cid)[1], xxxs)
local coldditto = getItemAttribute(item.uid, "cold")
exhaustion.set(cid, 548798, coldditto)

end






 setCreatureMaxMana(cid, ((maxh) + (levellife)))


doPlayerAddMana(cid, -getCreatureMana(cid))
doPlayerAddMana(cid, getCreatureHealth(pk))

registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
setPlayerStorageValue(cid,31020,1)





if getPlayerStorageValue(cid,31021) >= 1 then
coldown = cp[pokename]["!cd"]
local str = ""..coldown.nmoves.."]"..pokename.."&"
for rocks = 1, coldown.nmoves do 
pokemon = cp[pokename]["m"..rocks..""]
str = str..","..pokemon.spell.."]"..pokemon.cd..""
end
local function verpacket(params)
if isCreature(params.cid) then
if getPlayerStorageValue(params.cid, 31021) >= 1 then
DoTaskbarcold(params.cid,params.str2)
else
return true
end
end
end
for rocks3 = 1, 5 do
addEvent(verpacket, rocks3*1000, {cid = cid,str2 = str})
end

end


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