local i = {
["00:00"] = {nome = "Demon Invasões", pos = {x=1000, y=1000, z=7}, monster = {"40 Demon", "50 Fire Devil", "4 Orshabaal"}},
["21:00"] = {nome = "Dragon Invasões", pos = {x=1000, y=1000, z=7}, monster = {"100 Dragon"}},
}

function onThink(interval, lastExecution)
        hours = tostring(os.date("%X")):sub(1, 5)
        tb = i[hours]
        if tb then
                doBroadcastMessage(hours .. " - " .. tb.nome .. " Iníciou.")
                for _,x in pairs(tb.monster) do
                        for s = 1, tonumber(x:match("%d+")) do
                                doSummonCreature(x:match("%s(.+)"), tb.pos)
                        end
                end
        end
        return true
end
