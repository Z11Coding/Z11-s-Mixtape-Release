function onCreate()
	-- background shit
	makeLuaSprite('tfbbg3', 'tfbbg3', -600, -300);
	setScrollFactor('tfbbg', 0.9, 0.9);
	
	makeLuaSprite('tfbbg2', 'tfbbg2', -600, 300);
	scaleObject('tfbbg2', 1.1, 1.1);

	makeLuaSprite('tfbbg', 'tfbbg', -600, -200);
	scaleObject('tfbbg', 1.1, 1.1);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('tfbbg3', false);
	addLuaSprite('tfbbg2', false);
	addLuaSprite('tfbbg', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end