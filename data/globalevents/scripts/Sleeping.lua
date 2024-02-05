SLEEP_RANGE = 5

SLEEP_PERCENT = 0.7

MONSTERS_NAME = {"pidgey", "pidgey"}
MONSTERS_CORPSE = {5961, 5961}

ZONE_MONSTERS = {
{x = 1085, y = 1026, z = 7, range = 20},
{x = 1092, y = 1020, z = 7, range = 8},
}
----------------------------------------------------
SIGNAL = {{1, 1}, {1, -1}, {-1, 1}, {-1, -1}}
----------------------------------------------------

  
-- Função checkPlayers(pos)
-- Verifica se existem jogadores próximos as criaturas.
local function checkPlayers(pos)
    for i = 0, SLEEP_RANGE do
        for j = 0, SLEEP_RANGE do
            for k = 1, 4 do
            local PPos = {x = pos.x + (i*SIGNAL[k][1]), y = pos.y + (j*SIGNAL[k][2]), z = pos.z}
            local Player = getTopCreature(PPos).uid
            
                if isPlayer(Player) then
                return TRUE
                end
            end
        end
    end
    
return FALSE
end  
    

-- Função getMonsterByZone()
-- Checagem de monstros da zona pré-definida no começo do script.
local function getMonsterByZone()
local Zone = ZONE_MONSTERS
local Monsters = {}

    for i = 1, #Zone do   
        for j = 0, Zone[i].range do       
            for k = 0, Zone[i].range do                       
                for l = 1, 4 do
                local MPos = {x = Zone[i].x + (j*SIGNAL[l][1]), y = Zone[i].y + (k*SIGNAL[l][2]), z = Zone[i].z}
                local Monster = getTopCreature(MPos).uid   
                       
                    if isMonster(Monster) then
                    local Name = string.lower(getCreatureName(Monster))                           
                    local NPos = table.find(MONSTERS_NAME, Name)
                    local Check = checkPlayers(MPos)
                  
                        if not Check and NPos ~= nil then
                        table.insert(Monsters, {Monster, MONSTERS_CORPSE[NPos]})
                        end
                    end                                  
                end            
            end            
        end    
    end

return Monsters    
end
           

-- Função onSleep(monster, pos, corpse, speed, time)
-- Regula o estado do monstro, quer seja dormindo, quer seja para acordar.
local function onSleep(monster, pos, corpse, speed, time)    
    if isMonster(monster) then
    local Check = checkPlayers(pos)

        if not Check and (time > 0) then
        doSendMagicEffect(pos, 32)
        doSetItemOutfit(monster, corpse, 2000)
        addEvent(onSleep, 2000, monster, pos, corpse, speed, (time - 2))
        else
        doSendMagicEffect(pos, 13)
        doChangeSpeed(monster, speed)  
        end                                          
    end 
end       
                                           



-- Função onThink(interval, lastExecution)
-- Função principal que executa as demais funções e ações do script.
function onThink(interval, lastExecution)
        local Monsters = getMonsterByZone()
        
    if #Monsters ~= 0 then
    
        for i = 1, math.floor(#Monsters*SLEEP_PERCENT) do
        local r = math.random(#Monsters)
        
            if isMonster(Monsters[r][1]) then
            local MPos = getCreaturePosition(Monsters[r][1])
            local Speed = getCreatureSpeed(Monsters[r][1])
            
            doChangeSpeed(Monsters[r][1], -Speed)
            onSleep(Monsters[r][1], MPos, Monsters[r][2], Speed, interval-10)
            table.remove(Monsters, r)
            end        
        end    
    end

        return TRUE
end