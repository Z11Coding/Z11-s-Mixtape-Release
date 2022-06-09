-- configs lmao
local squash = 0.9
local speed = 0.1
-- end of configs lmao 

function goodNoteHit(id, direction, noteType, isSustainNote)
	setProperty('boyfriend.scale.y', squash)
	doTweenY('funnytweenbf', 'boyfriend.scale', 1, speed, 'cubeOut')
	doTweenY('funnytweenbar', 'healthBar.scale', 1, speed, 'cubeOut')
	doTweenY('funnytweenic', 'iconP1.scale', 1, speed, 'cubeOut')
	doTweenY('funnytweenon', 'iconP2.scale', 1, speed, 'cubeOut')
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	setProperty('dad.scale.y', squash)
	doTweenY('funnytweendad', 'dad.scale', 1, speed, 'cubeOut')
end