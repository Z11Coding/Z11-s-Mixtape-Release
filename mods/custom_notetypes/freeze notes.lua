function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
	--Check if the note is an Instakill Note
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'freeze notes' then
	setPropertyFromGroup('unspawnNotes', i, 'texture', 'ice'); --Change texture
	setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
	
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
	end
	
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
	function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'freeze notes' then
	-- put something here if you want
	end
	end
	
	-- Called after the note miss calculations
	-- Player missed a note by letting it go offscreen
	function noteMiss(id, noteData, noteType, isSustainNote) -- this seems confusing but it's basically in reverse "miss the note don't freeze if hit then freeze"
	if noteType == 'freeze notes' then -- put your notetype name here
	doTweenY('frozenHUD', 'camHUD', 3000, 1, 'circIn') -- an effect of killing the HUD when it is frozen
	cameraShake('camGame', 0.005, 1)
	cameraShake('camHUD', 0.002, 1)
	doTweenAlpha('dedhud', 'camHUD', 1, 0.1, 'linear')
	triggerEvent('Alt Idle Animation', 'BF', '-frozen') -- you will wanna make an idle where the character is frozen use "-frozen" at the end
	setProperty('boyfriend.stunned', true) -- this disables the ability to hit notes
	characterDance('BF') -- this is so it can automatically freeze on frame it hits
	end
	end