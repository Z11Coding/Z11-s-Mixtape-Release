function onCreate()
	makeLuaSprite('box1', 'boxingnight1', -550, -400)
	makeLuaSprite('box3', 'boxingnight3', -750, -450)
	makeLuaSprite('bold1', 'boxingboulder', -750, 550)
	makeLuaSprite('bold2', 'boxingboulder', 750, 450)

	scaleObject('box1', 1, 1)
	scaleObject('box3', 1.5, 1.5)
	scaleObject('bold1', 1.5, 1.5)
	scaleObject('bold2', 2.5, 2.5)

    setScrollFactor('box1', 0, 0)
    setScrollFactor('box3', 0.2, 0.2)
    setScrollFactor('bold1', 1, 1)
    setScrollFactor('bold2', 1, 1)

	addLuaSprite('box1', false)
	addLuaSprite('box3', false)
	addLuaSprite('bold1', false)
	addLuaSprite('bold2', false)
end