local initX = 0
local initY = 0
local pix = 0
local uno = true
local noteSize = 0.69
local thingSize = 1

local beatSquish = true
    local modBy = 1 -- what beat should it happen on | 1 = every
    
local rotatin = false
function onCreatePost()
    if getPropertyFromClass('PlayState', 'isPixelStage') == true then
        -- fuckin ass piece of fuckin shit ass fuck shit
        addOffset('boyfriend', 'idle', 100, -250)
        addOffset('boyfriend', 'singLEFT', 100, -250)
        addOffset('boyfriend', 'singRIGHT', 100, -250)
        addOffset('boyfriend', 'singUP', 100, -250)
        addOffset('boyfriend', 'singDOWN', 100, -250)
        noteSize = 6
        thingSize = 6
        pix = 4
    else
        setProperty('boyfriend.origin.y', 400) -- funky ass stretch
    end
    
    initX = getProperty('boyfriend.x')
    initY = getProperty('boyfriend.y')
end

function onUpdate(elapsed)
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'scale.x', math.lerp(noteSize, getPropertyFromGroup('playerStrums', i, 'scale.x'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))
        setPropertyFromGroup('playerStrums', i, 'scale.y', math.lerp(noteSize, getPropertyFromGroup('playerStrums', i, 'scale.y'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))
    end

    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'scale.x', math.lerp(noteSize, getPropertyFromGroup('opponentStrums', i, 'scale.x'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))
        setPropertyFromGroup('opponentStrums', i, 'scale.y', math.lerp(noteSize, getPropertyFromGroup('opponentStrums', i, 'scale.y'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))
    end

    -- fuck you ;)
    setProperty('boyfriend.scale.x', math.lerp(thingSize, getProperty('boyfriend.scale.x'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))
    setProperty('boyfriend.scale.y', math.lerp(thingSize, getProperty('boyfriend.scale.y'), fakeBoundTo(1 - (elapsed * 9), 0, 1)))

    --updateHitbox(what) -- ugly as shit

    if getProperty('boyfriend.animation.curAnim.name') == 'idle' and (getProperty('boyfriend.x') ~= initX or getProperty('boyfriend.y') ~= initY) and not uno then
        uno = true
        doTweenAngle('borf', 'boyfriend', 0, (crochet/5000), 'quadInOut')
        doTweenX('beefef', 'boyfriend', initX, (crochet/5000), 'quadInOut')
        doTweenY('beeff', 'boyfriend', initY, (crochet/5000), 'quadInOut')
    end
end

local rayman = {
    {x = 400, y = 400}, -- left
    {x = 150, y = 400}, -- down
    {x = 150, y = 400}, -- up
    {x = -100, y = 400}, -- right
    -- pixel
    {x = 40, y = 90}, -- left
    {x = 20, y = 90}, -- down
    {x = 20, y = 90}, -- up
    {x = 0, y = 90}, -- right
}

function onCountdownTick(count)
    setProperty('boyfriend.origin.x', rayman[2+pix].x)
    setProperty('boyfriend.origin.y', rayman[2+pix].y)
    setProperty('boyfriend.scale.x', 1.2 * thingSize)
    setProperty('boyfriend.scale.y', 0.7 * thingSize)
end

function onBeatHit()
    --debugPrint(getPropertyFromGroup('playerStrums', 1, 'scale.x'))

    bobb = check(getProperty('boyfriend.animation.curAnim.name'))
    if beatSquish then
        if bobb and curBeat % modBy == 0 then
            setProperty('boyfriend.origin.x', rayman[2+pix].x)
            setProperty('boyfriend.origin.y', rayman[2+pix].y)
            setProperty('boyfriend.scale.x', 1.2 * thingSize)
            setProperty('boyfriend.scale.y', 0.7 * thingSize)
        end
    end
        
    if curBeat % 2 == 0 then
        for i = 0, 3 do
            if i % 2 == 0 then
                setPropertyFromGroup('playerStrums', i, 'scale.x', (noteSize * 1.5))
                setPropertyFromGroup('playerStrums', i, 'scale.y', (noteSize * 1.5))
                noteTweenAngle('blehehe' .. i+4, i + 4, -10, (crochet/5000), 'circInOut')
            else
                setPropertyFromGroup('playerStrums', i, 'scale.x', 0.4 * (noteSize / 1.2))
                setPropertyFromGroup('playerStrums', i, 'scale.y', 0.4 * (noteSize / 1.2))
                noteTweenAngle('bluhuhu' .. i+4, i + 4, 10, (crochet/5000), 'circInOut')
            end
        end
    else
        for i = 0, 3 do
            if i % 2 == 1 then
                setPropertyFromGroup('playerStrums', i, 'scale.x', (noteSize * 1.5))
                setPropertyFromGroup('playerStrums', i, 'scale.y', (noteSize * 1.5))
                noteTweenAngle('blahaha' .. i+4, i + 4, -10, (crochet/5000), 'circInOut')
            else
                setPropertyFromGroup('playerStrums', i, 'scale.x', 0.4 * (noteSize / 2))
                setPropertyFromGroup('playerStrums', i, 'scale.y', 0.4 * (noteSize / 2))
                noteTweenAngle('blohoho' .. i+4, i + 4, 10, (crochet/5000), 'circInOut')
            end
        end
    end

    if curBeat % 2 == 0 then -- why seperate? idk
        for i = 0, 3 do
            if i % 2 == 0 then
                setPropertyFromGroup('opponentStrums', i, 'scale.x', 0.4 * (noteSize / 2))
                setPropertyFromGroup('opponentStrums', i, 'scale.y', 0.4 * (noteSize / 2))
                noteTweenAngle('blehehe' .. i, i, 10, (crochet/5000), 'circInOut')
            else
                setPropertyFromGroup('opponentStrums', i, 'scale.x', (noteSize * 1.5))
                setPropertyFromGroup('opponentStrums', i, 'scale.y', (noteSize * 1.5))
                noteTweenAngle('bluhuhu' .. i, i, -10, (crochet/5000), 'circInOut')
            end
        end
    else
        for i = 0, 3 do
            if i % 2 == 1 then
                setPropertyFromGroup('opponentStrums', i, 'scale.x', 0.4 * (noteSize / 2))
                setPropertyFromGroup('opponentStrums', i, 'scale.y', 0.4 * (noteSize / 2))
                noteTweenAngle('blahaha' .. i, i, 10, (crochet/5000), 'circInOut')
            else
                setPropertyFromGroup('opponentStrums', i, 'scale.x', (noteSize * 1.5))
                setPropertyFromGroup('opponentStrums', i, 'scale.y', (noteSize * 1.5))
                noteTweenAngle('blohoho' .. i, i, -10, (crochet/5000), 'circInOut')
            end
        end
    end
end

function goodNoteHit(i, d, sus, type)
    uno = false
    setProperty('boyfriend.origin.x', rayman[d+(1+pix)].x)
    setProperty('boyfriend.origin.y', rayman[d+(1+pix)].y)
    if rotatin then setProperty('boyfriend.origin.x', 150) end
    if d == 0 then
        if rotatin then setProperty('boyfriend.angle', -20) end
        setProperty('boyfriend.x', initX - 50 / (pix+1)) -- no divide by 0 type shit
        setProperty('boyfriend.y', initY)
        setProperty('boyfriend.scale.x', 1.4 * thingSize)
        setProperty('boyfriend.scale.y', 1 * thingSize)
    elseif d == 1 then
        if rotatin then setProperty('boyfriend.angle', 0) end
        setProperty('boyfriend.x', initX)
        setProperty('boyfriend.y', initY)
        setProperty('boyfriend.scale.x', 1.4 * thingSize)
        setProperty('boyfriend.scale.y', 0.5 * thingSize)
    elseif d == 2 then
        if rotatin then setProperty('boyfriend.angle', 0) end
        setProperty('boyfriend.x', initX)
        setProperty('boyfriend.y', initY)
        setProperty('boyfriend.scale.x', 0.8 * thingSize)
        setProperty('boyfriend.scale.y', 1.4 * thingSize)
    elseif d == 3 then
        if rotatin then setProperty('boyfriend.angle', 20) end
        setProperty('boyfriend.x', initX + 50 / (pix+1))
        setProperty('boyfriend.y', initY)
        setProperty('boyfriend.scale.x', 1.4 * thingSize)
        setProperty('boyfriend.scale.y', 1 * thingSize)
    end
end

function math.lerp(a, b, t)
    return (b - a) * t + a;
end

function fakeBoundTo(v, min, max)
    return math.max(min, math.min(max, v))
end

function check(anim)
    if string.find(anim, 'sing') then
        return false
    else
        return true
    end
end