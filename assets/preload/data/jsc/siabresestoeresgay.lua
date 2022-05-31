function onCreate()
makeLuaSprite('1cuphead', 'zassets/PUTATRAMPOSADEMIERDA/1cuphead', -800, -450);
scaleObject('1cuphead', 2.25, 2.25);
setLuaSpriteScrollFactor('1cuphead', 0.001, 0.001);
addLuaSprite('1cuphead', false);


precacheSound('jaja/scare_cuphead');

 makeAnimatedLuaSprite('NightmareJumpscares01', 'zassets/PUTATRAMPOSADEMIERDA/NightmareJumpscares01', -1600, -1300);
 addAnimationByPrefix('NightmareJumpscares01', 'NightmareJumpscares01', 'CupScare instance 1', 24, false);  
 objectPlayAnimation('NightmareJumpscares01', 'NightmareJumpscares01', true)
 scaleObject('NightmareJumpscares01', 1.5, 1.5);
 setLuaSpriteScrollFactor('NightmareJumpscares01', 0.001, 0.001);
 addLuaSprite('NightmareJumpscares01', true);
 setProperty('NightmareJumpscares01.visible', false); 

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
	playSound('jaja/scare_cuphead', 2)
setProperty('NightmareJumpscares01.visible', true);
objectPlayAnimation('NightmareJumpscares01', 'NightmareJumpscares01', true)
runTimer('xdd', 1, 1);
      end
   end 
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'xdd'  then
setProperty('static.visible', true);
end 
end