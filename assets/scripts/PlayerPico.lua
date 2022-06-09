local Ammo = 0
--thank you kevin kuntz for helping my peanut sized brain with this
function onCreate()

end

function onBeatHit()
	if curBeat == 4 then
		if boyfriendName == 'PlayerPico' then
			setPropertyFromClass('GameOverSubstate', 'characterName', 'PlayerPico'); --Character json file for the death animation
			setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
			setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'CustomLoss_Pico'); --put in mods/music/
			setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
		
			makeAnimatedLuaSprite('PicoSpecial', 'PicoSpecial', 975, 0)
			addAnimationByPrefix('PicoSpecial', 'One', 'SpecialAmmoOne', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Two', 'SpecialAmmoTwo', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Three', 'SpecialAmmoThree', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Four', 'SpecialAmmoFour', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Five', 'SpecialAmmoFive', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Base', 'SpecialBase', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Press', 'SpecialPress', 24, false);
			addAnimationByPrefix('PicoSpecial', 'Wait', 'SpecialWait', 24, false);
			setObjectCamera('PicoSpecial', 'hud');
			addLuaSprite('PicoSpecial', true);
			objectPlayAnimation('PicoSpecial', 'Base', false);
		elseif getProperty('PicoSpecial.visible') then
			setProperty('PicoSpecial.visible', false);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)

end

function onStepHit() --controls and updates the Shoot button
	if boyfriendName == 'PlayerPico' then --all these if and elseif statements are probably really bad but im bad at coding so uh
		if Ammo < 1 then 
			objectPlayAnimation('PicoSpecial', 'Wait', false);
		elseif Ammo >= 1 and Ammo < 2 then
			objectPlayAnimation('PicoSpecial', 'One', false);
		elseif Ammo >= 2 and Ammo < 3 then
			objectPlayAnimation('PicoSpecial', 'Two', false);
		elseif Ammo >= 3 and Ammo < 4 then
			objectPlayAnimation('PicoSpecial', 'Three', false);
		elseif Ammo >= 4 and Ammo < 5 then
			objectPlayAnimation('PicoSpecial', 'Four', false);
		elseif Ammo == 5 then
			objectPlayAnimation('PicoSpecial', 'Five', false);
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if boyfriendName == 'PlayerPico' then
		Ammo = Ammo + 0.1 --adjusts the ammo counter
		setTextString('AmmoCounter', 'Ammo');
		setProperty('health', getProperty('health')-0.023);
		if Ammo > 5 then
			Ammo = 5
		end
		if noteType == 'AmmoBoxSmall' then
			Ammo = Ammo + 1
			if Ammo > 5 then
				Ammo = 5
			end
		elseif noteType == 'AmmoBoxLarge' then
			Ammo = Ammo + 3
			if Ammo > 5 then
				Ammo = 5
			end
		end	
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	-- Works the same as goodNoteHit, but for Opponent's notes being hit
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
	if boyfriendName == 'PlayerPico' and getProperty('health') > 1.25 then
		setProperty('health', getProperty('health')-0.03); --enemy angry, double damage
	elseif boyfriendName == 'PlayerPico' and getProperty('health') > 0.1 then
		setProperty('health', getProperty('health')-0.015); --enemy sings, deals damage
	end
end

function onUpdate()
	if keyJustPressed('space') and Ammo >= 1 and getProperty('health') > 0 and boyfriendName == 'PlayerPico' then
		characterPlayAnim('boyfriend', 'Shoot', true);
		objectPlayAnimation('PicoSpecial', 'Press', false);
		playSound('PicoGunBlast', 0.5);
		Ammo = Ammo - 1
		setProperty('health', getProperty('health')+0.35);
	end
	
	if getProperty('health') >= 1.5 and boyfriendName == 'PlayerPico' then --limit on max health
		setProperty('health', 1.5);
	end
end

function noteMissPress(direction)
	-- Called after the note press miss calculations
	-- Player pressed a button, but there was no note to hit (ghost miss)
	if boyfriendName == 'PlayerPico' then
		setProperty('health', getProperty('health')-0.01);
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	-- Called after the note miss calculations
	-- Player missed a note by letting it go offscreen
	if boyfriendName == 'PlayerPico' then
		setProperty('health', getProperty('health')-0.01);
	end
end