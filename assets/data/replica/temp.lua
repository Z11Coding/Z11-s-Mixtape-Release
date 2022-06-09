function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end

function wavestart()
	for i=0,7 do
		setActorAngle(getActorAngle(i) + 15, i)
	end
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
	end
end

function painstart()
	showOnlyStrums = true -- remove all hud elements besides notes and strums
    for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
		tweenFadeIn(i,0,0.6)
    end
end

function fadeOutAndGo() 
	move = false
    for i=0,3 do
		tweenFadeIn(i,0,0.6)
    end
	tweenFadeIn(background,1,0.6)
	for i = 4, 7 do
		print('tween x ang')
		tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
	end
	tweenFadeIn('girlfriend', 0, 0.6)
end

function setDefault(id)
	move = true
	swayingForce = 0
	_G['defaultStrum'..id..'X'] = getActorX(id)
	print('angle 0')
	setActorAngle(0,id)
end

function unpop()
	tweenFadeOut(white,0,0.15)
end

function pop()
	tweenFadeIn(white,1,0.15,'unpop')
end

function fadeInAndGo()
	move = false
    for i=0,3 do
		tweenFadeIn(i,1,0.6)
    end
	tweenFadeIn(background,0,0.6)
	for i = 4, 7 do
		tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 275, getActorAngle(i) - 360, 0.6, 'setDefault')
	end
	tweenFadeIn('girlfriend', 1, 0.6)
end

function resetTween()
	waitForTween = false
end

function update (elapsed) 
	-- sway
	if swaying and move then
		--print(currentBeat)
		local currentBeat = (swayingForce/1000)*(bpm/120)
		if curBeat % 4 == 0 and not waitForBeat and funnyEffect then
			waitForBeat = true
			waitForTween = true
			poggers = not poggers
			if poggers then
				tweenPosXAngle(0, getActorX(0) - 120 + 64 * math.sin(currentBeat * math.pi) ,360, 0.2, 'resetTween')
				tweenPosXAngle(1, getActorX(1) - 60 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
				tweenPosXAngle(2, getActorX(2) + 60 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
				tweenPosXAngle(3, getActorX(3) + 120 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
	
				tweenPosXAngle(4, getActorX(4) - 120 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
				tweenPosXAngle(5, getActorX(5) - 60 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
				tweenPosXAngle(6, getActorX(6) + 60 + 64 * math.sin(currentBeat * math.pi),360, 0.2)
				tweenPosXAngle(7, getActorX(7) + 120 + 64 * math.sin(currentBeat * math.pi),360, 0.2)

				_G['defaultStrum0X'] = getActorX(0) - 120
				_G['defaultStrum1X'] = getActorX(1) - 60
				_G['defaultStrum2X'] = getActorX(2) + 60
				_G['defaultStrum3X'] = getActorX(3) + 120

				_G['defaultStrum4X'] = getActorX(4) - 120
				_G['defaultStrum5X'] = getActorX(5) - 60
				_G['defaultStrum6X'] = getActorX(6) + 60
				_G['defaultStrum7X'] = getActorX(7) + 120

			else
				tweenPosXAngle(0, getActorX(0) + 120 + 64 * math.sin(currentBeat * math.pi),0, 0.2, 'resetTween')
				tweenPosXAngle(1, getActorX(1) + 60 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
				tweenPosXAngle(2, getActorX(2) - 60 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
				tweenPosXAngle(3, getActorX(3) - 120 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
	
				tweenPosXAngle(4, getActorX(4) + 120 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
				tweenPosXAngle(5, getActorX(5) + 60 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
				tweenPosXAngle(6, getActorX(6) - 60 + 64 * math.sin(currentBeat * math.pi),0, 0.2)
				tweenPosXAngle(7, getActorX(7) - 120 + 64 * math.sin(currentBeat * math.pi),0, 0.2)

				_G['defaultStrum0X'] = getActorX(0) + 120
				_G['defaultStrum1X'] = getActorX(1) + 60
				_G['defaultStrum2X'] = getActorX(2) - 60
				_G['defaultStrum3X'] = getActorX(3) - 120

				_G['defaultStrum4X'] = getActorX(4) + 120
				_G['defaultStrum5X'] = getActorX(5) + 60
				_G['defaultStrum6X'] = getActorX(6) - 60
				_G['defaultStrum7X'] = getActorX(7) - 120
			end
		elseif not waitForTween then
			swayingForce = swayingForce + 4;
			for i = 0, 7  do
				setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin(currentBeat * math.pi),i)
			end
		end
	end
end

function beatHit (beat)
	waitForBeat = false
end

function stepHit (step)
	if curStep == 126 then
		fadeOutAndGo()
        swaying = true
    end
	if curStep == 320 then
		fadeInAndGo()
    end
	if step == 445 then
        fadeOutAndGo()
        funnyEffect = true
    end
	for i = 608, 841, 8 do
		if i < 608 then
			if step == i then
				pop()
			end
		end
	end
	for i = 673, 705, 8 do
		if i < 673 then
			if step == i then
				pop()
			end
		end
	end
	for i = 736, 769, 8 do
		if i < 736 then
			if step == i then
				pop()
			end
		end
	end
	for i = 801, 833, 8 do
		if i < 801 then
			if step == i then
				pop()
			end
		end
	end
	if step == 833 then
		fadeInAndGo()
		funnyEffect = false
		swaying = false
	end
	if step == 959 then
		fadeOutAndGo()
		funnyEffect = true
		swaying = true
	end
	if step == 1216 then
		funnyEffect = false
	end
	if step == 1472 then
		fadeInAndGo()
		swaying = false
	end
end

print("Mod Chart script loaded :)")