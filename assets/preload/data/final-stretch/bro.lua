function onEvent(name, value1, value2)
if name == "Asbel" then
	if value2 == "flash" then
		makeLuaSprite('image', value1, 0, 0);
		addLuaSprite('image', false);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('image', 'hud');
		runTimer('lel', 0.5);
		end
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'lel' then
		doTweenAlpha('puta', 'image', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'puta' then
		removeLuaSprite('image', true);
	end
end