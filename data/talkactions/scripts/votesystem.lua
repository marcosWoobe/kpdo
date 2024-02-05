local cmds = { -- Aten��o, abaixo seguem os comandos do sistema, caso deseje mudar, mude tamb�m em talkactions.xml
cmdAbrirVot = '/openvote', -- Ligar a vota��o, e em seguida, ap�s as aspas, a mensagem
cmdFecharVot = '/closevote', -- Encerrar vota��o
cmdVotar = '!vote' -- Para votar, e ap�s as aspas, sim ou nao, caso contrario o volo n�o ser� contabilizado 
}
local basicConfig = {
access = 5, -- Access minimo para abrir e fechar vota��es
storagePower = 27900, -- Storage value sobre se o sistema esta ligado ou desligado
strS = 27901, -- Votos Sim
strN = 27902 -- Votos N�o
}


local playersVotaram = {}

local playersenable = false
function onSay(cid, words, param)

if words == cmds.cmdAbrirVot and getPlayerAccess(cid) >= basicConfig.access then -- (Z)
if getGlobalStorageValue(basicConfig.storagePower) == -1 then -- (ZA)
setGlobalStorageValue(basicConfig.storagePower,1)
print('Votacao iniciada por ' .. getPlayerName(cid) .. ', com a seguinte pergunta:\n'..param)
doPlayerSay(cid,'/B Vota��o iniciada:\n'..param..'\nUse: '.. cmds.cmdVotar..' "sim para votar sim\n'.. cmds.cmdVotar ..' "nao para votar nao.',1)
else -- (ZA)
doPlayerSendCancel(cid,'No momento j� existe uma vota��o no ar, digite: ' .. cmds.cmdFecharVot .. ' para finalizar a atual e come�ar uma nova.')
end-- (ZA)
elseif words == cmds.cmdVotar then -- (Z)
if getGlobalStorageValue(basicConfig.storagePower) == 1 then -- (ZC)
local vot = 0
for i = 0,#playersVotaram do -- (ZD)
if getPlayerName(cid) == playersVotaram[i] then -- (ZDA)
vot = 1
break
else -- (ZDA)
vot = 0
end -- (ZDA)
end -- (ZD)
if vot == 0 then -- (ZE)
if param == 'sim' then -- (ZEA)
if getGlobalStorageValue(basicConfig.strS) == -1 then -- (ZEAA)
setGlobalStorageValue(basicConfig.strS,1)
else -- (ZEAA)
setGlobalStorageValue(basicConfig.strS,getGlobalStorageValue(basicConfig.strS)+1)
end -- (ZEAA)
doPlayerSendTextMessage(cid,22,'Obrigado pelo seu voto.')
print(getPlayerName(cid)..' votou sim.')
table.insert(playersVotaram,getPlayerName(cid))

elseif param == 'nao' then -- (ZEA)
if getGlobalStorageValue(basicConfig.strN) == -1 then -- (ZEAB)
setGlobalStorageValue(basicConfig.strN,1)
else -- (ZEAB)
setGlobalStorageValue(basicConfig.strN,getGlobalStorageValue(basicConfig.strN)+1)
end -- (ZEAB)
print(getPlayerName(cid)..' votou nao.')
doPlayerSendTextMessage(cid,22,'Obrigado pelo seu voto.')
table.insert(playersVotaram,getPlayerName(cid))
else -- (ZEA)
doPlayerSendCancel(cid,'Desculpe, n�o entendemos seu voto, use apenas as op��es \'sim\' e \'nao\'.')
end -- (ZEA)
else -- (ZE)
doPlayerSendCancel(cid,'Desculpe, mas voc� n�o pode votar mais de uma vez em uma unica vota��o.')
end -- (ZE)
else -- (ZC)
doPlayerSendCancel(cid,'N�o esta ocorrendo vota��es no momento.')
end -- (ZC)
elseif words == cmds.cmdFecharVot and getPlayerAccess(cid) >= basicConfig.access then -- (Z)
if getGlobalStorageValue(basicConfig.storagePower) == 1 then -- (ZB)
if getGlobalStorageValue(basicConfig.strS) == -1 then -- (ZBA)
setGlobalStorageValue(basicConfig.strS,0)
end -- (ZBA)
if getGlobalStorageValue(basicConfig.strN) == -1 then -- (ZBB)
setGlobalStorageValue(basicConfig.strN,0)
end -- (ZBB)
print('Votacao terminada em Sim '..getGlobalStorageValue(basicConfig.strS).. 'x' .. getGlobalStorageValue(basicConfig.strN) ..' Nao.')
doPlayerBroadcastMessage(cid, 'A vota��o terminou, Resultado:\nSIM > ' ..getGlobalStorageValue(basicConfig.strS).. ' x ' ..getGlobalStorageValue(basicConfig.strN)..' < N�O.')
playersVotaram = nil



setGlobalStorageValue(basicConfig.storagePower,-1) 
setGlobalStorageValue(basicConfig.strS,-1) 
setGlobalStorageValue(basicConfig.strN,-1) 
else -- (ZB)
doPlayerSendCancel(cid,'N�o existe uma vota��o iniciada.')
end -- (ZB)
end -- (Z)

end