function onBeatHit()
    if boyfriendName == 'bflol' then
        turnvalue = 20
        if curBeat % 2 == 0 then
            turnvalue = 12
            --triggerEvent('Camera Follow Pos', 0, 650);
            setProperty('camHUD.x', 0, 650);
            setProperty('timeTxt.x', getProperty('timeBar.x'))
            setProperty('timeBar.x', W3)
            setProperty('timeBarBG.x', W3)
            setProperty('defaultCamZoom', 1.3);
            setProperty('iconP1.x', X)
            setProperty('iconP2.x', X)
            setProperty('iconP1.y', Y)
            setProperty('iconP2.y', Y)
            getRandomInt(1, 4, true)
        end
        if curBeat % 4 == 2 then
            turnvalue = -10
            X = getRandomInt(0, 400, true)
            Y = getRandomInt(0, 400, true)
            W = getRandomInt(100, 900, true)
            WY = getRandomInt(0, 50, true)
            W2 = getRandomInt(100, 600, true)
            WY2 = getRandomInt(5, 0, true)
            W3 = getRandomInt(100, 600, true)
            WY3 = getRandomInt(0, 50, true)

            setProperty('defaultCamZoom', 1.6);
            setProperty('iconP1.x', X)
            setProperty('iconP2.x', X)
            setProperty('iconP1.y', Y)
            setProperty('iconP2.y', Y)

            --triggerEvent('Camera Follow Pos', 30, 650);
            setProperty('camHUD.x', 30, 650);
            setProperty('timeTxt.x', getProperty('timeBar.x'))
            setProperty('timeBarBG.x', 0, 500)
            setProperty('timeBar.x', W)
        end
        if curBeat % 8 == 4 then
                turnvalue = -50
                --triggerEvent('Camera Follow Pos', 60, 650);
                setProperty('camHUD.x', 60, 650);
                setProperty('timeTxt.x', getProperty('timeBar.x'))
                setProperty('timeBar.x', W2)
                setProperty('timeBarBG.x', W2)
                setProperty('defaultCamZoom', 1.1);
                setProperty('iconP1.x', X)
                setProperty('iconP2.x', X)
                setProperty('iconP1.y', Y)
                setProperty('iconP2.y', Y)    
        end
            setProperty('iconP2.angle',-turnvalue)
            setProperty('iconP1.angle',turnvalue)
            doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circOut')
            doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circOut')
            setProperty('icon.angle',turnvalue)
            doTweenAngle('iconTween3','icon',0,crochet/1000,'circOut')
    end
end
function onStepHit()
    if boyfriendName == 'bflol' then
        if curStep == 125 then
        doTweenAngle('healthTween1','healthBar',360, 1, 'cubeInOut');
        doTweenAngle('healthTween2','healthBarBG',360, 1, 'cubeInOut');
        end
            random = getRandomInt(1, 4, true)
            if random == 1 then random = 'CF9FFF' 
            elseif random == 2 then random = '5D3FD3' 
            elseif random == 3 then random = 'b00b69' 
            elseif random == 4 then random = 'b10b62' end
        if curStep == 23 then
            makeLuaSprite('pahty', '', -200, -200)
            setObjectCamera('pahty', 'other')
            setScrollFactor('pahty', 0, 0)
            addLuaSprite('pahty',true)
            setProperty('pahty.alpha', 0.37)
        end
        if curBeat % 1 == 0 then
            makeGraphic('pahty', 4000, 4000, random)
        end
    end
end