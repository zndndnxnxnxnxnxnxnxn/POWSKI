function onCreate()

    makeLuaSprite('bg','ski/ski_bg',-200,-50)
    addLuaSprite('bg')
    setScrollFactor('bg',1,1)
end

function onCreatePost()
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end
end