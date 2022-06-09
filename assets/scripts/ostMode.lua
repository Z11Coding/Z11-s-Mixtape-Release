dadCamPoses = {0, 0}
function onCreate()
    if ostmode == true then
        setProperty('defaultCamZoom', (getProperty('defaultCamZoom') < 1 and 1 or getProperty('defaultCamZoom')))
    end
end

function onCreatePost()
    
    if ostmode == true then
    setProperty('skipCountdown', true)
    makeAnimatedLuaSprite('logo', 'logoBumpin', 420, 80)
    addAnimationByPrefix('logo', 'bump', 'logo bumpin', 24, true)
    setObjectCamera('logo', 'other')
    addLuaSprite('logo', true)

    makeLuaText('songName', 'WHORE', 1000, 360, 550)
    setObjectCamera('songName', 'other')
    setTextSize('songName', 50)
    setTextBorder('songName', 3, '000000')
    setTextAlignment('songName', 'center')
    addLuaText('songName', true)

    makeLuaText('songLength', '0:00', 1000, 360, 600)
    setObjectCamera('songLength', 'other')
    setTextSize('songLength', 60)
    setTextBorder('songLength', 3, '000000')
    setTextAlignment('songLength', 'center')
    addLuaText('songLength', true)
    for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
	end
    for i = 0, getProperty('notes.length')-1 do
		--Check if the note is an Instakill Note
		setPropertyFromGroup('notes', i, 'noAnimation', true);
	end
    setProperty('camHUD.visible', false)
    setProperty('gf.visible', false)
    setProperty('boyfriend.visible', false)
    dadPosX = getProperty('dad.x') + getProperty('dad.offset.x')
    dadPosY = getProperty('dad.y') + getProperty('dad.offset.y')

    setTextString('songName', songName)
    end
end

function onUpdate()
    
    if ostmode == true then
    if curStep > 0 then
        cameraSetTarget('dad')
    end
    setProperty('defaultCamZoom', (getProperty('defaultCamZoom') < 1 and 1 or getProperty('defaultCamZoom')))
    end
end

function onUpdatePost()
    
    if ostmode == true then
    if curStep > 0 then
        cameraSetTarget('dad')
    end
    setProperty('defaultCamZoom', (getProperty('defaultCamZoom') < 1 and 1 or getProperty('defaultCamZoom')))
    end
end

function onStepHit()
    
    if ostmode == true then setTextString('songLength', milliToHuman(math.floor(getPropertyFromClass('Conductor', 'songPosition') - noteOffset)).. ' / ' .. milliToHuman(math.floor(songLength))) end
end

function onBeatHit()
    
    if ostmode == true then
    if curBeat % 2 == 0 then
        objectPlayAnimation('logo', 'bump', false)
    end
    end
end

function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end