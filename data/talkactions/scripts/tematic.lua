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
local roupinhaa = {175,178,179,238,239,242,252,259,290,291,182,241,243,251,261,289,530,1422,1423,1424,1425,1426}
local roupas = {
["ash"] = {price = 2,name = "ash",storageid = 45992,tipe= 175},
["brock"] = {price = 2,name = "brock",storageid = 45993,tipe= 178},
["gary"] = {price = 2,name = "gary",storageid = 45994,tipe= 179},
["surge"] = {price = 2,name= "surge",storageid = 45995,tipe= 238},
["blaine"] = {price = 2,name = "blaine",storageid = 45996,tipe= 239},
["koga"] = {price = 2,name="koga",storageid = 45997,tipe= 242},
["giovanni"] = {price = 2,name= "giovanni",storageid = 45998,tipe= 252},
["james"] = {price = 2,name = "james",storageid = 45999,tipe= 259},
["bruno"] = {price = 2,name = "bruno",storageid = 46000,tipe= 290},
["lance"] = {price = 2,name = "lance",storageid = 46001,tipe= 291},
["officer jenny"] = {price = 2,name= "officer jenny",storageid = 46002,tipe= 182},
["erika"] = {price = 2,name = "erika",storageid = 46003,tipe= 241},
["sabrina"] = {price = 2,name = "sabrina",storageid = 46004,tipe= 243},
["female professor"] = {name = "female professor",price = 2,storageid = 46005,tipe= 251},
["jesse"] = {price = 2,name= "jesse",storageid = 46006,tipe= 261},
["lorelei"] = {price = 2,name="lorelei",storageid = 46007,tipe= 289},
["agatha"] = {price = 2,name="agatha",storageid = 46008,tipe= 530},
}
function onSay(cid, words, param, channel)


	
	local roupa = roupas[param]
	local list = "\nOutfits = true(have), false(you not have)\n"
	local xpt = roupas
for _,pid in pairs(roupas) do
	if getPlayerStorageValue(cid,pid.storageid) >= 1 then
	 list = list.."\n "..pid.name.." = Have."
	 else
	 	list = list.."\n "..pid.name.." = dont have."
		 end
end

if not param then
 return doShowTextDialog(cid, 2149,  list)
 end
	if not roupa then
	
	return doShowTextDialog(cid, 2149,  list)
	end
	
	
if getPlayerStorageValue(cid,roupa.storageid) >= 1 then

	

	local tmp = getCreatureOutfit(cid)
	tmp.lookType = roupa.tipe
if (hasCondition(cid, CONDITION_OUTFIT)) then
	return doPlayerSendTextMessage(cid,22,"need a leave flying/surf to change outfit.")
end
--doSetCreatureOutfit(cid, tmp,-1)
	doCreatureChangeOutfit(cid, tmp)
	setPlayerStorageValue(cid,302302,1)
	doPlayerSave(cid,false)
	else
	return doPlayerSendTextMessage(cid,22,"you dont have this outfit")
	end
	return true
end
