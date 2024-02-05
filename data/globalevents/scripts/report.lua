
function onThink(interval, lastExecution)

local wordpad = getConfigValue('worldId')
local word = ""
if wordpad == 0 then
word = "Nibiru"
elseif wordpad == 1 then
word = "Pandora"
elseif wordpad == 2 then
word = "Fusion"
elseif wordpad == 3 then
word = "Maya"
end
local result_plr = db.getResult("SELECT * FROM  `report_message` WHERE  `"..word.."` =0;")
if(result_plr:getID() ~= -1) then
while(true) do
local worldid = tonumber(result_plr:getDataInt("WorldId"))
local playername = tostring(result_plr:getDataString("Player"))
local mensagem = tostring(result_plr:getDataString("Mensagem"))
local idmessage = tonumber(result_plr:getDataInt("message_id"))
local worldname = ""
if worldid == 0 then
worldname = "Nibiru"
elseif worldid == 1 then
worldname = "Pandora"
elseif worldid == 2 then
worldname = "Fusion"
elseif worldid == 3 then
worldname = "Maya"
end
db.executeQuery("UPDATE `report_message` SET  `"..word.."` =  '1' WHERE  `report_message`.`message_id` ="..idmessage..";")
local channeltype = 7
if isInArray(admserver,  playername) then
channeltype = 13
end
doReportGlobalMessage(playername.."("..worldname..")",mensagem,channeltype)



if not(result_plr:next()) then
break
end

end
result_plr:free()
end
return TRUE
end
