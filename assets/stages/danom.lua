function onCreate()
	-- background shit
	makeLuaSprite('bg', 'halloween/room', 300, -400);
	setScrollFactor('bg', 0.9, 0.9);
	--scaleObject('bg', 1.3, 1.3);

	makeLuaSprite('window', 'halloween/windowcity', 300, -400);
	setScrollFactor('window', 0.9, 0.9);

	makeLuaSprite('filter', 'halloween/filter1', 300, -400);
	setScrollFactor('filter1', 0.9, 0.9);

	makeLuaSprite('filteralt', 'halloween/filter2', 300, -400);
	setScrollFactor('filter2', 0.9, 0.9);

	makeLuaSprite('filterbg', 'halloween/filterforbg', 300, -400);
	setScrollFactor('filterforbg', 0.9, 0.9);
	--scaleObject('ring', 1.3, 1.3);
	--scaleObject('woods', 1.1, 1.1);

	addLuaSprite('bg', false);
	addLuaSprite('window', false);
	addLuaSprite('filterbg', false);
	addLuaSprite('filter', true);
	addLuaSprite('filteralt', true);
	--addLuaSprite('woods', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end