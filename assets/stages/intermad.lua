function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bgSchool2', 'special/intermad', -800, -600);
	addAnimationByPrefix('bgSchool2', 'idle', ' idle', 24, true);
	setScrollFactor('bgSchool2', 0.6, 0.90);
	setGraphicSize('bgSchool2', 4000);
	--scaleObject('bg', 1.3, 1.3);

	makeAnimatedLuaSprite('bgStreet', 'special/groundmad', 0, 0);
	addAnimationByPrefix('bgStreet', 'idle', ' idle', 24, true);
	setScrollFactor('bgStreet', 0.95, 0.95);
	setGraphicSize('bgStreet', 3000);
	--scaleObject('ring', 1.3, 1.3);
	--scaleObject('woods', 1.1, 1.1);

	addLuaSprite('bgSchool2', false);
	addLuaSprite('bgStreet', false);
	objectPlayAnimation('bgSchool2', 'idle', true);
	objectPlayAnimation('bgStreet', 'idle', true);
	--addLuaSprite('woods', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end