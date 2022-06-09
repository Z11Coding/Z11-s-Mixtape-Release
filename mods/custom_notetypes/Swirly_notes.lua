local range = 50
local speed = 0.05

local d = 0
function onUpdate(elapsed)
    d = d + speed

    for note=0,3 do
        setPropertyFromGroup('playerStrums', note, 'x', _G['defaultPlayerStrumX'..note] + range * math.cos((d + note*0.25) * (math.pi * 0.5)))
        setPropertyFromGroup('playerStrums', note, 'y', _G['defaultPlayerStrumY'..note] + range * math.sin((d + note*0.25) * (math.pi * 0.5)))
    end
end