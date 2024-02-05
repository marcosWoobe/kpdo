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
function onSay(cid, words, param, channel)
if isSeniorTutor(cid) then

        local t = param:explode(",")
        local name, days = t[1], tonumber(t[2])  
local fraseban = 'You are Banned. By a Senior Tutor'
if t[3] then
fraseban = t[3]
end

                        if name then
                        if days and days <= 3 and  days >= 1 then 
local acc = getAccountIdByName(name)
 if acc ~= 0 then
local tempo = days * 24 * 3600 
        doAddAccountBanishment(acc, target, os.time() + tempo, 5, 2, fraseban.." By Senior "..getCreatureName(cid), 0)
        
                                       else
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player not exist.")
                                end
                        else
                            return    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Minimo de 1 dia e maximo de 3 dias de ban.")
                        end
        else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player not exist.")
        end

if isPlayer(getPlayerByName(name)) then
doBroadcastMessage(name.." Is banned By :"..getCreatureName(cid).." , Comment : "..fraseban.." , days ban: "..days)
doRemoveCreature(getPlayerByName(name))
end
else 
return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You not is a Senior tutor.") 
end
return true
end