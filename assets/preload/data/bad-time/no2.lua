
function onCreate()
	if dadName == '4sans' then
		makeAnimatedLuaSprite('animatedicon', 'icons/perrade', 500, 10)
		addAnimationByPrefix('animatedicon', 'normal', 'normal', 24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'loss', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'hud')
		addLuaSprite('animatedicon', false)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if dadName == '4sans' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
			setProperty('animatedicon.x', 590)
			setProperty('animatedicon.y', 39)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
			setProperty('animatedicon.x', 500)
			setProperty('animatedicon.y', 10)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end
	end
end