function onCreate()
	-- background shit
	makeLuaSprite('sky', 'stage/stagebruh/background', 30, 50);
	
	makeLuaSprite('ground', 'stage/stagebruh/ground', 0, 1000)

-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('sky', 'stage/stagebruh/background', -70, 0);
		makeLuaSprite('walls', 'stage/stagebruh/foreground', 200, 250);
		setLuaSpriteScrollFactor('walls', 0.9, 0.9);
		scaleObject('walls', 0.8, 0.8);
		setLuaSpriteScrollFactor('sky', 0, 0.6);
	end

	addLuaSprite('sky', false);
	addLuaSprite('ground', false);
	addLuaSprite('walls', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end