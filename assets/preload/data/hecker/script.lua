function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'disc-bf-ded'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'ded'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'silence'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'retry'); --put in mods/music/	
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('hecker');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end