function onThink(interval, lastExecution)
local MENSAGEM = {
"� iniciante Aprenda a jogar ,Acesse http://forum.exaioros.com/f12-tutoriais-e-spoilers",
"Acesse o Faq para ver o mapa do jogo e aprender um pouco sobre o jogo em http://www.exaioros.com/?subtopic=faq",
"Encontrou algum bug ?Est� com problemas?,Reporte com Ctrl+R, ou envie um ticket http://www.exaioros.com/?subtopic=bugtracker&add=true",
"Registra-se no forum para se manter atualizado http://forum.exaioros.com/forum",
"Seja um Doador ajude a manter o servidor online e usufrua das vantagens vips http://www.exaioros.com/?subtopic=buypoints",
"Siga-nos no Twitter @exaioros  http://twitter.com/#!/exaioros",
"Poste videos e imagens sobre o jogo em http://forum.exaioros.com/f7-screen-shoots-movies",
"Tem alguma Denuncia que precisa vim a publico? http://forum.exaioros.com/f19-denuncias-reports",
"Tem alguma Duvida que precisa de uma reposta mais conclusiva por jogadores e staff? http://forum.exaioros.com/f9-duvidas-help ",
"� experiente no jogo compartilhe seu conhecimento com os demais em http://forum.exaioros.com/f12-tutoriais-e-spoilers.",
"Ol� venha participar do evento para ajudar a divulgar o kpdo e ainda ganhe points  para participar � facil veja como http://forum.exaioros.com/t8061-evento-sorteio-de-500-points-no-facebook-participe-e-facil#107252",
"Tem alguma sugest�o sobre o jogo para melhorar , sugest�es s�o sempre bem vindas, http://forum.exaioros.com/f5-sugestoes-suggestions",
"S� confie nos sites (http://www.exaioros.com/);(http://forum.exaioros.com/), qualquer outro link que pessa para que voc� logue sua conta que n�o seja o nosso pr�prio site pode ser uma tentativa para roubar sua conta, fiquem atentos!",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end