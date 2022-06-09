local allowCountdown = false
local waitThing = false
local confirmed = 0

function onCreate()
    if isStoryMode then
        makeLuaSprite('Warn', 'wainings/Nom', 0, 0)
        screenCenter('Warn', 'xy')
        setObjectCamera('Warn', 'other')
        
        addLuaSprite('Warn', true)

        makeLuaText('continue', "Press SHIFT to Continue", 0.8, 1020, 20)
        setObjectCamera('continue', 'other')
        addLuaText('continue', true)
    end
end
function onStartCountdown()
    if not waitThing and isStoryMode and not seenCutscene then
        --startVideo('yourvideo');
        waitThing = true
        return Function_Stop;
    end

    if isStoryMode and not allowCountdown then
        return Function_Stop
    end
    if isStoryMode and allowCountdown then
        return Function_Continue
    end
    return Function_Continue;
end
function onUpdate()
    if  getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') and confirmed == 0 then
        allowCountdown = true
        startCountdown();
        doTweenAlpha('Warn', 'Warn', 0, 1, sineOut);
        doTweenAlpha('continue', 'continue', 0, 1, sineOut);
        playSound('confirmMenu');
        confirmed = 1
    end
end