--O projeto kpdo � um projeto open source ,uma institui�ao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modifica��o de prefencia para colaborar para a evolu��o do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto �:
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


function registerreportmsg(cid,text,worldid)
db.executeQuery("UPDATE `global_storage` SET  `value` =  '"..text.."' WHERE  `global_storage`.`key` = 34503 AND `global_storage`.`world_id` ="..worldid..";")
return true
end
function onSay(cid, words, param, channel)
if getCreatureName(cid) == "[kpdo]Cater" then
local kkk = string.explode(param, ',',2) 
        if(param == "") then 
                doPlayerSendCancel(cid, "Command requires param.") 
                return true 
				end
				local mensagem = kkk[1]
				local id = tonumber(kkk[2])
				if id and mensagem then
				registerreportmsg(cid,mensagem,id)
				end

				end
return true
end