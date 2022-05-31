function onCreate()
makeLuaSprite('1sans', 'zassets/PUTATRAMPOSADEMIERDA/1sans', -800, -450);
scaleObject('1sans', 2.25, 2.25);
setLuaSpriteScrollFactor('1sans', 0.001, 0.001);
addLuaSprite('1sans', false);


precacheSound('jaja/scare_sans');

 makeAnimatedLuaSprite('NightmareJumpscares02', 'zassets/PUTATRAMPOSADEMIERDA/NightmareJumpscares02', -550, -1200);
 addAnimationByPrefix('NightmareJumpscares02', 'NightmareJumpscares02', 'Wussup Bitch instance 1', 24, false);  
 objectPlayAnimation('NightmareJumpscares02', 'NightmareJumpscares02', true)
 scaleObject('NightmareJumpscares02', 1.5, 1.5);
 setLuaSpriteScrollFactor('NightmareJumpscares02', 0.001, 0.001);
 addLuaSprite('NightmareJumpscares02', true);
 setProperty('NightmareJumpscares02.visible', false); 

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
if value1 == 'perra' then
	playSound('jaja/scare_sans', 2)
setProperty('NightmareJumpscares02.visible', true);
objectPlayAnimation('NightmareJumpscares02', 'NightmareJumpscares02', true)
runTimer('xdd', 1, 1);
      end
   end 
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'xdd'  then
setProperty('static.visible', true);
end 
end