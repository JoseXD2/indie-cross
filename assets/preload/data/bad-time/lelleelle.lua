function onCreate()
makeLuaSprite('gradient', 'zassets/sans/images/gradient', 0, 0);
scaleObject('gradient', 1, 1);
addLuaSprite('gradient', true)
setObjectCamera('gradient', 'hud');
setProperty('gradient.alpha', 0);
end

function onEvent(name,value1,value2)
if name == "Flan" then
if value1 == 'xt' then	
doTweenAlpha('gradientV', 'gradient', 1, 0.2, 'quadInOut');
end
end
end

function onTweenCompleted(tag)
if tag == 'gradientV' then
doTweenAlpha('gradientI', 'gradient', 0, 0.1, 'quadInOut');
	end
end