-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Flash' then
		colour = tonumber(value2);
		duration = tonumber(value1);
		if colour == 4 then
			makeLuaSprite('Blue', 'white', 0, 0);
			setObjectCamera('Blue', 'hud');
			addLuaSprite('Blue', true);
			doTweenColor('flashcolour', 'Blue', '0000FF', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'Blue', 0, duration, 'linear');
		end
		if colour == 0 then
			makeLuaSprite('Black', 'white', 0, 0);
			setObjectCamera('Black', 'hud');
			addLuaSprite('Black', true);
			doTweenColor('flashcolour', 'Black', '000000', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'Black', 0, duration, 'linear');
		end
		if colour == 1 then
			makeLuaSprite('White', 'white', 0, 0);
			setObjectCamera('White', 'hud');
			addLuaSprite('White', true);
			doTweenColor('flashcolour', 'White', 'FFFFFF', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'White', 0, duration, 'linear');
		end
		if colour == 2 then
			makeLuaSprite('Red', 'white', 0, 0);
			setObjectCamera('Red', 'hud');
			addLuaSprite('Red', true);
			doTweenColor('flashcolour', 'Red', 'FF0000', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'Red', 0, duration, 'linear');
		end
		if colour == 3 then
			makeLuaSprite('Green', 'white', 0, 0);
			setObjectCamera('Green', 'hud');
			addLuaSprite('Green', true);
			doTweenColor('flashcolour', 'Green', '00FF00', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'Green', 0, duration, 'linear');
		end
		if colour == 5 then
			makeLuaSprite('Yellow', 'white', 0, 0);
			setObjectCamera('Yellow', 'hud');
			addLuaSprite('Yellow', true);
			doTweenColor('flashcolour', 'Yellow', 'CEC070', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'Yellow', 0, duration, 'linear');
		end
		if colour == 6 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '0000ffff', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'linear');
	    end
    end
end