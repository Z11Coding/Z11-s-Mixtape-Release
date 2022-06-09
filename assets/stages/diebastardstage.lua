function onCreate()
	-- Criando
	makeLuaSprite('fundo1', 'shadowbg4', -1040, 200)
	makeLuaSprite('fundo2', 'shadowbg3', -1240, -1100)
	makeLuaSprite('fundo3', 'shadowbg2', -840, -800)
	makeLuaSprite('fundo4', 'shadowbg', -840, -1000)
	makeAnimatedLuaSprite('talis', 'tails', 300, -230)
	makeAnimatedLuaSprite('punhos', 'knuckles', 850, -200)

	-- Aumentando
	scaleObject('fundo1', 1.2, 1.2)
	scaleObject('fundo2', 1.2, 1.2)
	scaleObject('fundo3', 1.2, 1.2)
	scaleObject('fundo4', 1.2, 1.2)

	-- Adicionando
	addLuaSprite('fundo4', false)
	addLuaSprite('fundo2', false)
	addLuaSprite('fundo3', false)
	addLuaSprite('fundo1', false)
	addLuaSprite('talis', false)
	addLuaSprite('punhos', false)

	-- ordem
	setObjectOrder('gfGroup', 6)
	setObjectOrder('punhos', 7)

	-- Animacoes
	addAnimationByPrefix('talis', 'idle', 'IDLET', 24, true)
	addAnimationByPrefix('punhos', 'idle', 'IDLEK', 24, true)
	addAnimationByPrefix('talissuto', 'suto', 'SHOOTSCARET', 24, true)
	addAnimationByPrefix('punhossusto', 'sus to', 'SHOOTSCAREK', 24, true)
end

function onBeatHit()
	if curBeat % 4 == 0 and curStep < 1985 then
	objectPlayAnimation('talis', 'idle')
	objectPlayAnimation('punhos', 'idle')
	end
end

function onStepHit()
	if curStep == 1856 then
		doTweenZoom('zum', 'camGame', 1.8, 10, 'quadInOut')
	end
	if curStep == 1721 then
		doTweenZoom('zum', 'camGame', 1.8, 10, 'quadInOut')
	end
	if curStep >= 1985 then
		objectPlayAnimation('talis', 'suto')
		objectPlayAnimation('punhos', 'sus to')
	end
end