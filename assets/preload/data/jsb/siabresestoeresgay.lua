function onCreate()
makeLuaSprite('1bendy', 'zassets/PUTATRAMPOSADEMIERDA/1bendy', -800, -450);
scaleObject('1bendy', 2.25, 2.25);
setLuaSpriteScrollFactor('1bendy', 0.001, 0.001);
addLuaSprite('1bendy', false);


precacheSound('jaja/scare_bendy');

 makeAnimatedLuaSprite('NightmareJumpscares03', 'zassets/PUTATRAMPOSADEMIERDA/NightmareJumpscares03', -800, -1500);
 addAnimationByPrefix('NightmareJumpscares03', 'NightmareJumpscares03', 'Emmi instance 1', 24, false);  
 objectPlayAnimation('NightmareJumpscares03', 'NightmareJumpscares03', true)
 scaleObject('NightmareJumpscares03', 1.5, 1.5);
 setLuaSpriteScrollFactor('NightmareJumpscares03', 0.001, 0.001);
 addLuaSprite('NightmareJumpscares03', true);
 setProperty('NightmareJumpscares03.visible', false); 

makeAnimatedLuaSprite('static', 'zassets/PUTATRAMPOSADEMIERDA/static', -800, -470);
addAnimationByPrefix('static', 'static', 'static', 24, true);  
objectPlayAnimation('static', 'static', true)
scaleObject('static', 2.7, 2.7);
setLuaSpriteScrollFactor('static', 0.001, 0.001);
addLuaSprite('static', true);
setProperty('static.visible', false);  
doTweenAlpha('hud', 'camHUD', 0, 0.000001, 'linear')
end


function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == 'puta' then
	playSound('jaja/scare_bendy', 2)
setProperty('NightmareJumpscares03.visible', true);
objectPlayAnimation('NightmareJumpscares03', 'NightmareJumpscares03', true)
runTimer('xdd', 1, 1);
      end
   end 
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'xdd'  then
setProperty('static.visible', true);
end 
end