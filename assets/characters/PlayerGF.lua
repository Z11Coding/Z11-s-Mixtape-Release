	local TauntReady = 1
--thank you kevin kuntz for helping my peanut sized brain with this
function onCreate()

end

function onBeatHit()
	if curBeat == 4 then
		if charSelectName == 'PlayerGF' then
			setPropertyFromClass('GameOverSubstate', 'characterName', 'PlayerGF'); --Character json file for the death animation
			setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
			setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'CustomLoss_GF'); --put in mods/music/
			setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
		
			makeAnimatedLuaSprite('GFspecial', 'GF_special', 975, 0)
			addAnimationByPrefix('GFspecial', 'Base', 'SpecialBase', 24, false);
			addAnimationByPrefix('GFspecial', 'Press', 'SpecialPress', 24, false);
			addAnimationByPrefix('GFspecial', 'Wait', 'SpecialWait', 24, false);
			setObjectCamera('GFspecial', 'hud');
			addLuaSprite('GFspecial', true);
			objectPlayAnimation('GFspecial', 'Base', false);
		elseif getProperty('GFspecial.visible') then
			setProperty('GFspecial.visible', false);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'hp_regen' then --function called for health regen
		setProperty('health', getProperty('health')+0.05);
		objectPlayAnimation('GFspecial', 'Wait', false);
	end
	if tag == 'taunt_cooldown' then --function called on finished taunt cooldown
		TauntReady = 1
		playSound('TauntCharged', 0.5);
		objectPlayAnimation('GFspecial', 'Base', false);
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	-- Works the same as goodNoteHit, but for Opponent's notes being hit
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
	if charSelectName == 'PlayerGF' then
		if getProperty('health') > 0.1 then
			setProperty('health', getProperty('health')-0.017);
		end
	end
end

function onUpdate()
	if keyJustPressed('space') and TauntReady == 1 and getProperty('health') > 0 and charSelectName == 'PlayerGF' then
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('boyfriend', 'hey', true);
		objectPlayAnimation('GFspecial', 'Press', false);
		playSound('TauntUse', 0.35);
		runTimer('taunt_cooldown', 10);
		runTimer('hp_regen', 0.1, 10);
		TauntReady = 0
	end
	
	if getProperty('health') >= 1.2 and charSelectName == 'PlayerGF' then --limit on max health
		setProperty('health', 1.2);
	end
end