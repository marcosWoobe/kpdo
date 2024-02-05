---D__USE_SQLITE__
function onUse(cid, item, fromPos, itemEx, toPos)



local pokemon = itemEx.uid









--local pokeballs = {'2221','2222', '2223','2224','2220','2538','2539', '2227','2653', '2542','2652', '2539','189','190','191','195','196','197','198','199','200'}





  if not isCreature(pokemon) then
return true
end
local pokemons = pokesteeee[getCreatureName(pokemon)]
     
   if pokemons then






    if isSummon(pokemon) then
            


			
   if getPlayerStorageValue(cid, pokemons.st) <= 0 and getPlayerLevel(cid) >= pokemons.lv then
          local bonus = (pokemons.lv)*50      
doPlayerAddExperience(cid, bonus)  
			doSendMagicEffect(getThingPos(cid), 210)
setPlayerStorageValue(cid, pokemons.st, 1)
setPlayerStorageValue(cid, 999, getPlayerStorageValue(cid, 999)+1)
			--local v = ((pokemons.st) + 1376)



local dono = getCreatureMaster(pokemon)
local nomedoplayer = getCreatureName(dono)
local pokehealth = getCreatureHealth(pokemon) 
local nomedopoke9 = getCreatureName(pokemon)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked pokedex in pokemon " .. nomedopoke9 .. " It belongs to "..nomedoplayer.." You received "..bonus.." experience points.")
local pokemondoido = getPlayerSlotItem(dono, 8)

local xps = fotos[nomedopoke9]
local v = 8573
if xps then
v = xps.fotopoke
end

local basehealt = pokes[nomedopoke9].vida
local baselv = pokes[nomedopoke9].level
local basehp = pokes[nomedopoke9].cons
local leveldoplayer = getPlayerLevel(dono)
local atributo = getItemAttribute(pokemondoido.uid, "exp")
local nomedopoke = getItemAttribute(pokemondoido.uid, "apelido")
if nomedopoke then
nomedopoke = nomedopoke 
else
nomedopoke = getItemAttribute(pokemondoido.uid, "nome")
end
local acomulado = getItemAttribute(pokemondoido.uid, "exp2")
local nivel = getItemAttribute(pokemondoido.uid, "boost")
local candy = getItemAttribute(pokemondoido.uid, "candy")
local finalizado = baselv+nivel
local somanivel = "Lv["..baselv.."]+ST["..nivel.."]= "..finalizado..""
if candy then
finalizado = baselv+nivel+candy
somanivel = "Lv["..baselv.."]+ST["..nivel.."]+B["..candy.."] = "..finalizado..""
end
local catchby = getItemAttribute(pokemondoido.uid, "catchby")
--if baselv <= 16 then
--niveldopoke = baselv/2 
--elseif baselv <= 26 then
--niveldopoke = baselv/1.9 
--elseif baselv <= 36 then
--niveldopoke = baselv/1.8
--elseif baselv <= 56 then
--niveldopoke = baselv/1.7
--elseif baselv <= 76 then
--niveldopoke = baselv/1.6
--elseif baselv <= 86 then
--niveldopoke = baselv/1.5
--else
local niveldopoke = baselv
--end

local somanivel2 = nivel+niveldopoke
local metade = nivel+leveldoplayer
local somavida1 = metade*basehp
local somavida = somavida1+basehealt
local calcx = niveldopoke*100
local stages = getPokemonStage(nivel)
local final2 =somanivel2*calcx*stages
local final = math.floor(final2-atributo)

local nivelnext = nivel+1
local dexstring = cp[nomedopoke9]["!cd"]
local refutado = cp[nomedopoke9]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 2 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 3 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 4 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 5 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 6 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 7 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 8 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 9 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 10 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

elseif dexstring.nmoves == 11 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

elseif dexstring.nmoves == 12 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m12"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m12 = "\n>Move 12: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
	end

else
			doSendMagicEffect(getThingPos(cid), 210)

			--local v = ((pokemons.st) + 1376)
local dono = getCreatureMaster(pokemon)
local nomedoplayer = getCreatureName(dono)
local pokehealth = getCreatureHealth(pokemon) 
local nomedopoke9 = getCreatureName(pokemon)
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You use pokedex in pokemon " .. nomedopoke9 .. " It belongs to "..nomedoplayer.." ")
local pokemondoido = getPlayerSlotItem(dono, 8)
local xps = fotos[nomedopoke9]
local v = 8573
if xps then
v = xps.fotopoke
end
local basehealt = pokes[nomedopoke9].vida
local baselv = pokes[nomedopoke9].level
local basehp = pokes[nomedopoke9].cons
local leveldoplayer = getPlayerLevel(dono)
local nomedopoke = getItemAttribute(pokemondoido.uid, "apelido")
if nomedopoke then
nomedopoke = nomedopoke 
else
nomedopoke = getItemAttribute(pokemondoido.uid, "nome")
end
local atributo = getItemAttribute(pokemondoido.uid, "exp")
local acomulado = getItemAttribute(pokemondoido.uid, "exp2")
local nivel = getItemAttribute(pokemondoido.uid, "boost")
local catchby = getItemAttribute(pokemondoido.uid, "catchby")
local candy = getItemAttribute(pokemondoido.uid, "candy")
local finalizado = baselv+nivel
local somanivel = "Lv["..baselv.."]+ST["..nivel.."]= "..finalizado..""
if candy then
finalizado = baselv+nivel+candy
somanivel = "Lv["..baselv.."]+ST["..nivel.."]+B["..candy.."] = "..finalizado..""
end
--if baselv <= 16 then
--niveldopoke = baselv/2 
--elseif baselv <= 26 then
--niveldopoke = baselv/1.9 
--elseif baselv <= 36 then
--niveldopoke = baselv/1.8
--elseif baselv <= 56 then
--niveldopoke = baselv/1.7
--elseif baselv <= 76 then
--niveldopoke = baselv/1.6
--elseif baselv <= 86 then
--niveldopoke = baselv/1.5
--else
local niveldopoke = baselv
--end
--local somanivel = nivel+baselv
local somanivel2 = nivel+niveldopoke
local metade = nivel+leveldoplayer
local somavida1 = metade*basehp
local somavida = somavida1+basehealt
local calcx = niveldopoke*100
local stages = getPokemonStage(nivel)
local final2 =somanivel2*calcx*stages
local final = math.floor(final2-atributo)

local nivelnext = nivel+1
local dexstring = cp[nomedopoke9]["!cd"]
local refutado = cp[nomedopoke9]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 2 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 3 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 4 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 5 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 6 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 7 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 8 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 9 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
elseif dexstring.nmoves == 10 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

elseif dexstring.nmoves == 11 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

elseif dexstring.nmoves == 12 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m12"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m12 = "\n>Move 12: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nPower ++: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
	end


end
                       
    elseif isMonster(pokemon) then
if getPlayerStorageValue(cid, 8888) >= 1 then
return true
end
                     if getPlayerStorageValue(cid, pokemons.st) <= 0 then
			   j = (pokemons.lv) * 100
                           doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked " .. getCreatureName(pokemon) .. " in your pokedex!, You received "..j.." experience points.")
			   doSendMagicEffect(getThingPos(cid), 210)
                           doPlayerAddExperience(cid, j)
                           setPlayerStorageValue(cid, pokemons.st, 1)
setPlayerStorageValue(cid, 999, getPlayerStorageValue(cid, 999)+1)
                     elseif getPlayerStorageValue(cid, pokemons.st) >= 1 then
			--local v = ((pokemons.st) + 1376)
local nomedopoke9 = getCreatureName(pokemon)
local dexstring = cp[nomedopoke9]["!cd"]
local refutado = cp[nomedopoke9]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local xps = fotos[nomedopoke9]
local v = 8573
if xps then
v = xps.fotopoke
end
local pokehealth = getCreatureHealth(pokemon) 
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."")
elseif dexstring.nmoves == 2 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."")
elseif dexstring.nmoves == 3 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."")
elseif dexstring.nmoves == 4 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."")
elseif dexstring.nmoves == 5 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."")
elseif dexstring.nmoves == 6 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."")
elseif dexstring.nmoves == 7 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."")
elseif dexstring.nmoves == 8 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."")
elseif dexstring.nmoves == 9 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."")
elseif dexstring.nmoves == 10 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."")

elseif dexstring.nmoves == 11 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."")

elseif dexstring.nmoves == 12 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m12"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m12 = "\n>Move 12: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."")
	end
                     

			
                     end
    end

end







--local v = (1151 + 1376)





			if not isCreature(itemEx.uid) then
			return true
			end
 

                
        if isPlayer(itemEx.uid) then
	if getCreatureName(cid) == getCreatureName(itemEx.uid) then
               


  local quantia = getPlayerStorageValue(cid, 999)
         doPlayerSendTextMessage(cid, 27, "You Have " .. quantia .. " Discoverd pokemons already.")
doDexOpen(cid)
--doDexFOpen(cid,0,151)
--doDexFOpen(cid,152,251)
--doDexFOpen(cid,252,386)







	--elseif isPlayer(itemEx.uid) then
--if getPlayerStorageValue(cid, 5333) >= 1 then 
--doPlayerPopupFYI(cid, "You can't fight in battle, end battle for other")
--return true
--end
--if getPlayerStorageValue(itemEx.uid, 5333) >= 1 then 
--doPlayerPopupFYI(cid, "You can't fight this player in battle, wait this player end battle for other")
--return true
--end

--setPlayerStorageValue(cid, 9113, itemEx.uid)
--doCamsystem(cid)
end
        
end
return true
end  