local rain = Rain:new()

function onThink(interval, lastExecution)
    local minX = 1000
    local minY = 1000
    local maxX = 1100
    local maxY = 1100

    local frompos = {x=math.random(minX, maxX), y=math.random(minY, maxY), z=7}
    local topos = {x=math.random(frompos.x, maxX), y=math.random(frompos.y, maxY), z=7}

    local effects = {
        snow = {
            disteffect = 28,
            effect = 52
        },
        rain = {
            disteffect = CONST_ANI_ICE,
            effect = CONST_ME_LOSEENERGY
        }
    }

        rain.chance = math.random(10,50)
        rain:start({fromPos = frompos, toPos = topos}, effects.snow, 300, math.random(100, 500))

    return TRUE
end