
function onUse(cid, item, fromPos, itemEx, toPos)
if getTileInfo(getCreaturePosition(cid)).protection or #getCreatureSummons(cid) >= 1 and getTileInfo(getCreaturePosition(getCreatureSummons(cid)[1])).protection then
return true
end

if getPlayerStorageValue(cid, 63215) >= 1 then
return true
end
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end
if getPlayerStorageValue(cid, 17001) >= 1 then
return true
end

local d0 = 
{
        [0] = {pokemon = 'Magikarp p'}, 
}

local d20 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'poliwag p'}, 
        [5] = {pokemon = 'goldeen p'}, 
        [6] = {pokemon = 'goldeen p'},  
}

local d40 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
}

local d60 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
}

local d80 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},

}

local d90 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},
		[23] = {pokemon = 'seadra p'},
		[24] = {pokemon = 'croconaw p'},
		[25] = {pokemon = 'cloyster p'},
		[26] = {pokemon = 'dewgong p'},
		[27] = {pokemon = 'kabuto p'},
		[28] = {pokemon = 'omanyte p'},
		[29] = {pokemon = 'lotad p'},

}

local d100 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},
		[23] = {pokemon = 'seadra p'},
		[24] = {pokemon = 'croconaw p'},
		[25] = {pokemon = 'cloyster p'},
		[26] = {pokemon = 'dewgong p'},
		[27] = {pokemon = 'kabuto p'},
		[28] = {pokemon = 'omanyte p'},
		[29] = {pokemon = 'lotad p'},
		[30] = {pokemon = 'poliwrath p'},
		[31] = {pokemon = 'vaporeon p'},
		[32] = {pokemon = 'azumarill p'},
		[33] = {pokemon = 'golduck p'},
		[34] = {pokemon = 'politoed p'},
		[35] = {pokemon = 'tentacruel p'},
		[36] = {pokemon = 'blastoise p'},
		[37] = {pokemon = 'chinchou p'},

}

local d110 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},
		[23] = {pokemon = 'seadra p'},
		[24] = {pokemon = 'croconaw p'},
		[25] = {pokemon = 'cloyster p'},
		[26] = {pokemon = 'dewgong p'},
		[27] = {pokemon = 'kabuto p'},
		[28] = {pokemon = 'omanyte p'},
		[29] = {pokemon = 'lotad p'},
		[30] = {pokemon = 'poliwrath p'},
		[31] = {pokemon = 'vaporeon p'},
		[32] = {pokemon = 'azumarill p'},
		[33] = {pokemon = 'golduck p'},
		[34] = {pokemon = 'politoed p'},
		[35] = {pokemon = 'tentacruel p'},
		[36] = {pokemon = 'blastoise p'},
		[37] = {pokemon = 'chinchou p'},		
		[38] = {pokemon = 'surskit p'},		
		[39] = {pokemon = 'corphish p'},
		[40] = {pokemon = 'barboach p'},
		[41] = {pokemon = 'carvanha p'},
		[42] = {pokemon = 'clamperl p'},
		[43] = {pokemon = 'crawdaunt p'},
		[44] = {pokemon = 'luvdisc p'},
		[45] = {pokemon = 'wingull p'},
		[46] = {pokemon = 'corsola p'},
		[47] = {pokemon = 'kabutops p'},		
		[48] = {pokemon = 'lanturn p'},
		[49] = {pokemon = 'marshtomp p'},
		[50] = {pokemon = 'omastar p'},
		[51] = {pokemon = 'gyarados p'},
		[52] = {pokemon = 'kingdra p'},
		[53] = {pokemon = 'lombre p'},
		[54] = {pokemon = 'feraligatr p'},
		[55] = {pokemon = 'slowking p'},
		[56] = {pokemon = 'quagsire p'},
		[57] = {pokemon = 'octillery p'},

}

local d130 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},
		[23] = {pokemon = 'seadra p'},
		[24] = {pokemon = 'croconaw p'},
		[25] = {pokemon = 'cloyster p'},
		[26] = {pokemon = 'dewgong p'},
		[27] = {pokemon = 'kabuto p'},
		[28] = {pokemon = 'omanyte p'},
		[29] = {pokemon = 'lotad p'},
		[30] = {pokemon = 'poliwrath p'},
		[31] = {pokemon = 'vaporeon p'},
		[32] = {pokemon = 'azumarill p'},
		[33] = {pokemon = 'golduck p'},
		[34] = {pokemon = 'politoed p'},
		[35] = {pokemon = 'tentacruel p'},
		[36] = {pokemon = 'blastoise p'},
		[37] = {pokemon = 'chinchou p'},		
		[38] = {pokemon = 'surskit p'},		
		[39] = {pokemon = 'corphish p'},
		[40] = {pokemon = 'barboach p'},
		[41] = {pokemon = 'carvanha p'},
		[42] = {pokemon = 'clamperl p'},
		[43] = {pokemon = 'crawdaunt p'},
		[44] = {pokemon = 'luvdisc p'},
		[45] = {pokemon = 'wingull p'},
		[46] = {pokemon = 'corsola p'},
		[47] = {pokemon = 'kabutops p'},		
		[48] = {pokemon = 'lanturn p'},
		[49] = {pokemon = 'marshtomp p'},
		[50] = {pokemon = 'omastar p'},
		[51] = {pokemon = 'gyarados p'},
		[52] = {pokemon = 'kingdra p'},
		[53] = {pokemon = 'lombre p'},
		[54] = {pokemon = 'feraligatr p'},
		[55] = {pokemon = 'slowking p'},
		[56] = {pokemon = 'quagsire p'},
		[57] = {pokemon = 'octillery p'},
		[58] = {pokemon = 'gorebyss p'},
		[59] = {pokemon = 'huntail p'},
		[60] = {pokemon = 'pelipper p'},
		[61] = {pokemon = 'whiscash p'},
		[62] = {pokemon = 'swampert p'},
		[63] = {pokemon = 'ludicolo p'},
		[64] = {pokemon = 'mantine p'},
		[65] = {pokemon = 'qwilfish p'},

}

local d150 = 
{
        [0] = {pokemon = 'magikarp p'}, 
        [1] = {pokemon = 'horsea p'}, 
        [2] = {pokemon = 'krabby p'}, 
        [3] = {pokemon = 'poliwag p'}, 
        [4] = {pokemon = 'shellder p'}, 
        [5] = {pokemon = 'slowpoke p'}, 
        [6] = {pokemon = 'goldeen p'}, 
        [7] = {pokemon = 'psyduck p'}, 
        [8] = {pokemon = 'staryu p'}, 
        [9] = {pokemon = 'tentacool p'}, 
        [10] = {pokemon = 'poliwhirl p'}, 
        [11] = {pokemon = 'seel p'},
        [12] = {pokemon = 'squirtle p'},
        [13] = {pokemon = 'totodile p'},
        [14] = {pokemon = 'seaking p'},
        [15] = {pokemon = 'starmie p'},
        [16] = {pokemon = 'remoraid p'},
		[17] = {pokemon = 'wooper p'},
		[18] = {pokemon = 'marill p'},
		[19] = {pokemon = 'mudkip p'},
		[20] = {pokemon = 'slowbro p'},
		[21] = {pokemon = 'wartortle p'},
		[22] = {pokemon = 'kingler p'},
		[23] = {pokemon = 'seadra p'},
		[24] = {pokemon = 'croconaw p'},
		[25] = {pokemon = 'cloyster p'},
		[26] = {pokemon = 'dewgong p'},
		[27] = {pokemon = 'kabuto p'},
		[28] = {pokemon = 'omanyte p'},
		[29] = {pokemon = 'lotad p'},
		[30] = {pokemon = 'poliwrath p'},
		[31] = {pokemon = 'vaporeon p'},
		[32] = {pokemon = 'azumarill p'},
		[33] = {pokemon = 'golduck p'},
		[34] = {pokemon = 'politoed p'},
		[35] = {pokemon = 'tentacruel p'},
		[36] = {pokemon = 'blastoise p'},
		[37] = {pokemon = 'chinchou p'},		
		[38] = {pokemon = 'surskit p'},		
		[39] = {pokemon = 'corphish p'},
		[40] = {pokemon = 'barboach p'},
		[41] = {pokemon = 'carvanha p'},
		[42] = {pokemon = 'clamperl p'},
		[43] = {pokemon = 'crawdaunt p'},
		[44] = {pokemon = 'luvdisc p'},
		[45] = {pokemon = 'wingull p'},
		[46] = {pokemon = 'corsola p'},
		[47] = {pokemon = 'kabutops p'},		
		[48] = {pokemon = 'lanturn p'},
		[49] = {pokemon = 'marshtomp p'},
		[50] = {pokemon = 'omastar p'},
		[51] = {pokemon = 'gyarados p'},
		[52] = {pokemon = 'kingdra p'},
		[53] = {pokemon = 'lombre p'},
		[54] = {pokemon = 'feraligatr p'},
		[55] = {pokemon = 'slowking p'},
		[56] = {pokemon = 'quagsire p'},
		[57] = {pokemon = 'octillery p'},
		[58] = {pokemon = 'gorebyss p'},
		[59] = {pokemon = 'huntail p'},
		[60] = {pokemon = 'pelipper p'},
		[61] = {pokemon = 'whiscash p'},
		[62] = {pokemon = 'swampert p'},
		[63] = {pokemon = 'ludicolo p'},
		[64] = {pokemon = 'mantine p'},
		[65] = {pokemon = 'qwilfish p'},
		[66] = {pokemon = 'spheal p'},
		[67] = {pokemon = 'sealeo p'},
		[68] = {pokemon = 'wailmer p'},
		[69] = {pokemon = 'sharpedo p'},
		[70] = {pokemon = 'feebas p'},
}
        local config = {
        waters = {4614, 4615, 4616, 4617, 4618, 4619, 4608, 4609, 4610, 4611, 4612, 4613, 7236, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825},
}

local skill = getPlayerSkillLevel(cid, 6)
local playerpos = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}

        if(isInArray(config.waters, itemEx.itemid)) then
                doSendMagicEffect(toPos, CONST_ME_LOSEENERGY)
				 if skill >= 150 then
                                local random = math.random(0, 70)
                                if random <= 70 then

                                      local criature =   doCreateMonster(d130[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 7)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else           
  if skill >= 130 then
                                local random = math.random(0, 65)
                                if random <= 65 then

                                      local criature =   doCreateMonster(d130[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 7)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else              
if skill >= 110 then
                                local random = math.random(0, 57)
                                if random <= 57 then

                                      local criature =   doCreateMonster(d110[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 7)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 100 then
                                local random = math.random(0, 37)
                                if random <= 37 then

                                      local criature =   doCreateMonster(d100[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 7)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
           if skill >= 90 then
                                local random = math.random(0, 29)
                                if random <= 29 then
            local criature =   doCreateMonster(d90[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 7)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 80 then
                                local random = math.random(0, 35)
                                if random <= 22 then
                                  local criature =   doCreateMonster(d80[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 10)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 60 then
                                local random = math.random(0, 22)
                                if random <= 14 then
                              local criature =   doCreateMonster(d60[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 15)
  doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 40 then
                                local random = math.random(0, 20)
                                if random <= 11 then
                                         local criature =   doCreateMonster(d40[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 20)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 20 then
                                local random = math.random(0, 14)
                                if random <= 6 then
                                        local criature =   doCreateMonster(d20[random].pokemon, playerpos,false)
if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 25)
doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                                        return true
                                end
                        else
                        if skill >= 0 and skill < 20 then
                                local random = math.random(0, 3)
                                if random <= 0 then

                                     local criature =   doCreateMonster(d0[0].pokemon, playerpos,false)

if not isCreature(criature) then
return true
end
doPlayerAddSkillTry(cid, 6, 30)
       doCreatureSetStorage(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
doCreatureSetStorage(criature, 200, "!, ")
end     
doCreatureSetStorage(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(cid)..", ")   
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(criature, cid)  
end
                        
return true
                                end
                                return true
								                                end
                                return true
								 end
                                return true
								 end
                                return true
                        end
                return true
        end
        return true
end
        return true
end
end
end
end
end
end