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
function isSorcerer(cid)
	return isInArray({1, 5}, getPlayerVocation(cid))
end

function isDruid(cid)
	return isInArray({2, 6}, getPlayerVocation(cid))
end

function isPaladin(cid)
	return isInArray({3, 7}, getPlayerVocation(cid))
end

function isKnight(cid)
	return isInArray({4, 28}, getPlayerVocation(cid))
end

function isRookie(cid)
	return isInArray({0}, getPlayerVocation(cid))
end
