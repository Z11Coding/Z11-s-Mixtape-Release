function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Brainfuck Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Brainfuck Note' then
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'BRAINFUCK_NOTE'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function onUpdatePost(elapsed)
    for a = 0, getProperty('notes.length') - 1 do
        if getPropertyFromGroup('notes', a, 'noteType') == 'Brainfuck Note' then
            setPropertyFromGroup('notes', a, 'y', getPropertyFromGroup('notes', a, 'y') * -0.3 + getRandomInt(-0.5,-10))
        end
    end
end
