--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
do
    -- Function by Colandus!
    local validPositionKeys = {"x", "y", "z", "stackpos"}
    function isPosition(pos)
        local keyAmount = 0
        if (type(pos) == "table") then
            for key, val in pairs(pos) do
                if(not table.find(validPositionKeys, key) or not isNumber(val)) then
                    return false
                end
                keyAmount = keyAmount + 1
            end
            if (keyAmount ~= 3 and keyAmount ~= 4) then
                return false
            end
            return true
        end
        return false
    end
end 
 
function doTeleportPlayersFromArea(fromPos, toPos, newPos, offlinePlayers)
    -- Function by Colandus!
    if(not (isPosition(fromPos) and isPosition(toPos))) then
        return false, error("luaDoTeleportPlayersFromArea: Invalid position!", 2)
    end
 
    for _, cid in ipairs(getPlayersOnline()) do
        local pos = getCreaturePosition(cid)
        if(isInRange(pos, fromPos, toPos)) then
            if(getTileInfo(newPos).protection and getCreatureCondition(cid, CONDITION_INFIGHT)) then
                doRemoveCondition(cid, CONDITION_INFIGHT)
            end
            doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
            doTeleportThing(cid, newPos)
            doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
        end
    end
 
    if(offlinePlayers == true) then
        db.executeQuery([[
            UPDATE players
            SET posx = ]].. newPos.x .. [[, posy = ]] .. newPos.y .. [[, posz = ]] .. newPos.z .. [[
            WHERE online = 0 AND
                posx >= ]] .. fromPos.x .. [[ AND posx <= ]] .. toPos.x .. [[ AND
                posy >= ]] .. fromPos.y .. [[ AND posy <= ]] .. toPos.y .. [[ AND
                posz >= ]] .. fromPos.z .. [[ AND posz <= ]] .. toPos.z .. [[;
        ]])
    end
 
    return true
end