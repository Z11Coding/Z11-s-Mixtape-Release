
function onCreate()
if lowQuality then
	newGraphic('screenDarken', -1000, -500, 4000, 3500, '000000')
end
end


function onCreatePost()
if lowQuality then
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
end
end

function newGraphic(tag, x, y, width, height, color, alpha)
	makeLuaSprite(tag, '', x, y)
	makeGraphic(tag, width, height, color)
    addLuaSprite(tag, true)
end

function onUpdatePost()
if lowQuality then
setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)
end
end