function onCreate()
	-- background shit
	makeLuaSprite('evilSchoolBG2', 'evilSchoolBG2', -500, -300);
	setLuaSpriteScrollFactor('evilSchoolBG2', 0.9, 0.9);
	
	makeLuaSprite('evilSchoolFG2', 'evilSchoolFG2', -650, 600);
	setLuaSpriteScrollFactor('evilSchoolFG2', 0.9, 0.9);
	scaleObject('evilSchoolFG2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('blank_left', 'blank_light', -125, -100);
		setLuaSpriteScrollFactor('blank_left', 0.9, 0.9);
		scaleObject('blank_left', 1.1, 1.1);
		
		makeLuaSprite('blank_right', 'blank_light', 1225, -100);
		setLuaSpriteScrollFactor('blank_right', 0.9, 0.9);
		scaleObject('blank_right', 1.1, 1.1);
		setPropertyLuaSprite('blank_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blank', 'blank', -500, -300);
		setLuaSpriteScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('background', false);
	addLuaSprite('floor', false);
	addLuaSprite('blank_left', false);
	addLuaSprite('blank_right', false);
	addLuaSprite('blank', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end