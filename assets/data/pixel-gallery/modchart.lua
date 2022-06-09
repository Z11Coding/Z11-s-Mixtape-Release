local spin1 = false
local spin2 = false
local spincenter = false
local normal1 = false
local normal2 = false

function start (song)
	background = makeSprite('Evil','evil', true)
	glitch1 = makeSprite('EvilGlitch1','evilg1', true)
	glitch2 = makeSprite('EvilGlitch2','evilg2', true)
	glitch3 = makeSprite('EvilGlitch3','evilg3', true)
	red = makeSprite('EvilRed','evilred', true)
	darkred = makeSprite('EvilRedDark','evildred', true)
	dark = makeSprite('EvilDark','evild', true)
	darkglitch1 = makeSprite('EvilDarkGlitch1','evildg1', true)
	darkglitch2 = makeSprite('EvilDarkGlitch2','evildg2', true)
	setActorX(500,'evil')
	setActorY(800,'evil')
	setActorAlpha(0,'evil')
	setActorScale(6,'evil')
	setActorX(500,'evilg1')
	setActorY(800,'evilg1')
	setActorAlpha(0,'evilg1')
	setActorScale(6,'evilg1')
	setActorX(500,'evilg2')
	setActorY(800,'evilg2')
	setActorAlpha(0,'evilg2')
	setActorScale(6,'evilg2')
	setActorX(500,'evilg3')
	setActorY(800,'evilg3')
	setActorAlpha(0,'evilg3')
	setActorScale(6,'evilg3')
	setActorX(500,'evilred')
	setActorY(800,'evilred')
	setActorAlpha(0,'evilred')
	setActorScale(6,'evilred')
	setActorX(500,'evildred')
	setActorY(800,'evildred')
	setActorAlpha(0,'evildred')
	setActorScale(6,'evildred')
	setActorX(500,'evild')
	setActorY(800,'evild')
	setActorAlpha(0,'evild')
	setActorScale(6,'evild')
	setActorX(500,'evildg1')
	setActorY(800,'evildg1')
	setActorAlpha(0,'evildg1')
	setActorScale(6,'evildg1')
	setActorX(500,'evildg2')
	setActorY(800,'evildg2')
	setActorAlpha(0,'evildg2')
	setActorScale(6,'evildg2')
end


function update (elapsed)
	if spin1 then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi) + 360, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
		end
	end
	if normal1 then
        for i=0,3 do
            setActorX(_G['defaultStrum'..i..'X'],i)
            setActorY(_G['defaultStrum'..i..'Y'],i)
        end
    end
	if spin2 then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
		end
	end
	if normal2 then
        for i=4,7 do
            setActorX(_G['defaultStrum'..i..'X'],i)
            setActorY(_G['defaultStrum'..i..'Y'],i)
        end
    end
	if spincenter then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*5) * math.pi)+ 360, i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
		for i=4,7 do	
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*5) * math.pi)- 275, i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
end

function beatHit (beat)
	if curStep >= 444 and curStep < 512 then
		setCamZoom(2)
		setHudZoom(2)
	end
	if curStep >= 636 and curStep < 704 then
		setCamZoom(2)
		setHudZoom(2)
	end
end

function stepHit (step)
	if step == 1 then
	end
	if step == 320 then
		tweenFadeIn(glitch1,1,0.01)
		tweenFadeIn('dad',0,0.01)
		showOnlyStrums = true
	    for i=0,3 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 321 then
		tweenFadeIn(glitch1,0,0.01)
		showOnlyStrums = false
		tweenFadeIn('dad',1,0.01)
	    for i=0,3 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 336 then
		tweenFadeIn(glitch2,1,0.01)
		showOnlyStrums = true
		tweenFadeIn('dad',0,0.01)
	    for i=0,3 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 337 then
		tweenFadeIn(glitch2,0,0.01)
		showOnlyStrums = false
		tweenFadeIn('dad',1,0.01)
	    for i=0,3 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 338 then
		tweenFadeIn('boyfriend',0,0.01)
	    for i=4,7 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 339 then
		tweenFadeIn('boyfriend',1,0.01)
		tweenFadeIn('girlfriend',0,0.01)
	    for i=4,7 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 345 then
		tweenFadeIn('girlfriend',1,0.01)
	end
	if step == 384 then
		tweenFadeIn(glitch1,1,0.01)
		showOnlyStrums = true
	    for i=0,3 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 385 then
		tweenFadeIn(glitch1,0,0.01)
		tweenFadeIn(glitch2,1,0.01)
	    for i=0,3 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 386 then
		tweenFadeIn(glitch2,0,0.01)
		showOnlyStrums = false
	end
	if step == 400 then
		tweenFadeIn(glitch2,1,0.01)
		showOnlyStrums = true
	end
	if step == 401 then
		tweenFadeIn(glitch2,0,0.01)
		tweenFadeIn(glitch3,1,0.01)
	end
	if step == 402 then
		tweenFadeIn(glitch3,0,0.01)
		showOnlyStrums = false
	end
	if step == 412 then
		tweenFadeIn(darkglitch1,1,0.01)
		showOnlyStrums = true
	end
	if step == 413 then
		tweenFadeIn('boyfriend',0,0.01)
		tweenFadeIn('dad',0,0.01)
		tweenFadeIn(darkglitch1,0,0.01)
		tweenFadeIn(darkglitch2,1,0.01)
	end
	if step == 414 then
		tweenFadeIn('boyfriend',1,0.01)
		tweenFadeIn('dad',1,0.01)
		tweenFadeIn(darkglitch2,0,0.01)
		showOnlyStrums = false
	end
	if step == 444 then
		tweenPosXAngle('dad', 600, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 1800, 0, 0.6, 'boyfriend')
		for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 360, getActorAngle(i) + 360, 0.6, 'setDefault')
		end
		for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 600, getActorAngle(i) - 360, 0.6, 'setDefault')
		end
	end
	if step == 448 then
		spin1 = true
		normal1 = false
		tweenFadeIn(glitch1,1,0.01)
		tweenFadeIn('girlfriend', 0, 0.01)
		showOnlyStrums = true
	end
	if step == 449 then
		tweenFadeIn(glitch1,0,0.01)
		tweenFadeIn(glitch2,1,0.01)
	end
	if step == 450 then
		tweenFadeIn(glitch2,0,0.01)
		tweenFadeIn(glitch3,1,0.01)
	end
	if step == 451 then
		tweenFadeIn(glitch3,0,0.01)
		tweenFadeIn(background,1,0.01)
	end
	if step == 456 then
		tweenFadeIn(background,0,0.01)
		tweenFadeIn(red,1,0.01)
	end
	if step == 457 then
		tweenFadeIn(red,0,0.01)
		tweenFadeIn(darkred,1,0.01)
	end
	if step == 458 then
		tweenFadeIn(darkred,0,0.01)
		tweenFadeIn(background,1,0.01)
	end
	if step == 476 then
		tweenPosXAngle('dad', -600, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 600, 0, 0.6, 'boyfriend')
		for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 720, getActorAngle(i) + 360, 0.6, 'setDefault')
		end
		for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 1200, getActorAngle(i) - 360, 0.6, 'setDefault')
		end
	end
	if step == 480 then
		spin1 = false
		spin2 = true
	end
	if step == 508 then
		tweenPosXAngle('dad', 250, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 950, 0, 0.6, 'boyfriend')
		for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 360, getActorAngle(i) + 360, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
		for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 275, getActorAngle(i) - 360, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if step == 512 then
		normal1 = true
		normal2 = true
		spin2 = false
		tweenFadeIn(background,0,0.01)
		tweenFadeIn('girlfriend', 1, 0.01)
		showOnlyStrums = false
	end
	if step == 516 then
		normal1 = false
		normal2 = false
		tweenFadeIn(glitch1,1,0.01)
	end
	if step == 517 then
		tweenFadeIn(glitch1,0,0.01)
	end
	if step == 532 then
		tweenFadeIn(glitch1,1,0.01)
		showOnlyStrums = true
	end
	if step == 533 then
		tweenFadeIn(glitch1,0,0.01)
		tweenFadeIn(glitch2,1,0.01)
		tweenFadeIn('dad',0,0.01)
	    for i=0,3 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 534 then
		tweenFadeIn(glitch2,0,0.01)
		tweenFadeIn(darkglitch2,1,0.01)
	end
	if step == 535 then
		tweenFadeIn(darkglitch2,0,0.01)
		tweenFadeIn(darkglitch1,1,0.01)
		tweenFadeIn('dad',1,0.01)
	    for i=0,3 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 536 then
		tweenFadeIn(darkglitch1,0,0.01)
		showOnlyStrums = false
	end
	if step == 572 then
		tweenFadeIn(glitch2,1,0.01)
		showOnlyStrums = true
	end
	if step == 573 then
		tweenFadeIn(glitch2,0,0.01)
	end
	if step == 574 then
		tweenFadeIn(glitch1,1,0.01)
		tweenFadeIn('boyfriend',0,0.01)
	    for i=4,7 do
			tweenFadeIn(i,0,0.01)
		end
	end
	if step == 575 then
		tweenFadeIn(glitch1,0,0.01)
		tweenFadeIn(glitch2,1,0.01)
		tweenFadeIn('girlfriend',0,0.01)
	end
	if step == 576 then
		tweenFadeIn(glitch2,0,0.01)
		showOnlyStrums = false
		tweenFadeIn('boyfriend',1,0.01)
	    for i=4,7 do
			tweenFadeIn(i,1,0.01)
		end
	end
	if step == 596 then
		tweenFadeIn(red,1,0.01)
		showOnlyStrums = true
		tweenFadeIn('girlfriend',1,0.01)
	end
	if step == 597 then
		tweenFadeIn(red,0,0.01)
		tweenFadeIn(darkred,1,0.01)
	end
	if step == 597 then
		tweenFadeIn(darkred,0,0.01)
		tweenFadeIn(glitch1,1,0.01)
	end
	if step == 598 then
		tweenFadeIn(glitch1,0,0.01)
		showOnlyStrums = false
	end
	if step == 618 then
		tweenFadeIn(red,1,0.01)
		showOnlyStrums = true
	end
	if step == 619 then
		tweenFadeIn(red,0,0.01)
		tweenFadeIn(darkred,1,0.01)
	end
	if step == 620 then
		tweenFadeIn(darkred,0,0.01)
		tweenFadeIn(glitch1,1,0.01)
	end
	if step == 621 then
		tweenFadeIn(glitch1,0,0.01)
		showOnlyStrums = false
	end
	if step == 636 then
		normal1 = false	
		normal2 = false
		tweenPosXAngle('dad', 600, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 1800, 0, 0.6, 'boyfriend')
		for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 360, getActorAngle(i) + 360, 0.6, 'setDefault')
		end
		for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275, getActorAngle(i) - 360, 0.6, 'setDefault')
		end
	end
	if step == 640 then
	showOnlyStrums = true
	spincenter = true
	tweenFadeIn(glitch1,1,0.01)
	tweenFadeIn('girlfriend', 0, 0.01)
	tweenFadeIn(glitch2,0,0.01)
	tweenFadeIn(glitch3,0,0.01)
		for i=0,7 do
		setActorAngle(0, i)
		end
	end
	if step == 641 then
		tweenFadeIn(glitch1,0,0.01)
		tweenFadeIn(glitch2,1,0.01)
	end
	if step == 642 then
		tweenFadeIn(glitch2,0,0.01)
		tweenFadeIn(glitch3,1,0.01)
	end
	if step == 641 then
		tweenFadeIn(glitch3,0,0.01)
		tweenFadeIn(background,1,0.01)
	end
	if step == 648 then
		tweenFadeIn(background,0,0.01)
		tweenFadeIn(red,1,0.01)
	end
	if step == 658 then
		tweenFadeIn(red,0,0.01)
		tweenFadeIn(darkred,1,0.01)
	end
	if step == 668 then
		tweenPosXAngle('dad', -600, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 600, 0, 0.6, 'boyfriend')
	end
	if step == 672 then
		tweenFadeIn(glitch1,1,0.01)
	end
	if step == 680 then
		tweenFadeIn(darkred,0,0.01)
		tweenFadeIn(dark,1,0.01)
		tweenFadeIn(glitch1,0,0.01)
	end
	if step == 683 then
		tweenFadeIn(dark,0,0.01)
		tweenFadeIn(darkglitch1,1,0.01)
	end
	if step == 685 then
		tweenFadeIn(darkglitch1,0,0.01)
		tweenFadeIn(darkglitch2,1,0.01)
	end
	if step == 686 then
		tweenFadeIn(darkglitch2,0,0.01)
		tweenFadeIn(dark,1,0.01)
	end
	if step == 700 then
		tweenPosXAngle('dad', 250, 0, 0.6, 'dad')
		tweenPosXAngle('boyfriend', 950, 0, 0.6, 'boyfriend')
	end
	if step == 704 then
	tweenFadeIn(dark,0,0.01)
	tweenFadeIn(glitch3,0,0.01)
	tweenFadeIn('girlfriend', 1, 0.01)
	spincenter = false
	showOnlyStrums = false
		for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], getActorAngle(i) - 360, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end	
		for i = 4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], getActorAngle(i) + 360, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if step == 710 then
		for i=0,7 do
			setActorAngle(0, i)
		end
	end
end