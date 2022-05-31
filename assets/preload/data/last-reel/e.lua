function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == 'esobendy' then
setProperty('health', 0.1);
makeLuaSprite('Ink_shit', 'zassets/bendy/images/third/Ink_shit', 0, 0);
scaleObject('Ink_shit', 2, 2);
setObjectCamera('Ink_shit', 'other');
addLuaSprite('Ink_shit', true);
luaSpritePlayAnimation('Striker', 'Die'); 
luaSpritePlayAnimation('Piper', 'Die'); 
setProperty('Striker.x', 400)
setProperty('Striker.y', 512) 
setProperty('Piper.x', 1200)
setProperty('Piper.y', 380) 
runTimer('perrosdemier', 1, 1);  
runTimer('suficienteyamepusehornybfvamosafollar', 10, 1);  
end  
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'perrosdemier' then
removeLuaSprite('Piper')
removeLuaSprite('Striker')
end 
if tag == 'suficienteyamepusehornybfvamosafollar' then
doTweenAlpha('adiouuuu', 'Ink_shit', 0, 3, 'linear');
   end 
end