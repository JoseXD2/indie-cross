
local allowCountdown = false

function onStartCountdown()
	if not allowCountdown then
        runTimer('startText', 0.1);
		allowCountdown = true;
		startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
		setObjectCamera('blackscreen', 'hud')
		addLuaSprite('blackscreen', true)
		makeLuaSprite('circle', 'titulos/CircleMajin', 777, 0)
		setObjectCamera('circle', 'hud')
		addLuaSprite('circle', true)
		makeLuaSprite('text', 'titulos/TextMajin', -1200, 0)
		setObjectCamera('text', 'hud')
		addLuaSprite('text', true)
		runTimer('appear', 0.6, 1)
		runTimer('fadeout', 1.5, 1)
		doTweenX('circletween', 'circle', 0, 1.5, 'elasticInOut')
		doTweenX('texttween', 'text', 0, 1.5, 'elasticInOut')
	elseif tag == 'fadeout' then
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'elasticInOut')
		function onTweenCompleted(tag)
			if tag == 'blackfade' then
				doTweenAlpha('circlefade', 'circle', 0, 0.7, 'elasticInOut')
				doTweenAlpha('textfade', 'text', 0, 0.7, 'elasticInOut')
			end
		end
	end
end