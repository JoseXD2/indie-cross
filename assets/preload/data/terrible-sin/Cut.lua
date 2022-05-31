function onCreate()

makeAnimatedLuaSprite('Cutouts3', 'zassets/bendy/images/Cutouts/Cutouts3', 400, 0);
addAnimationByPrefix('Cutouts3', 'Cutouts3', 'Cutouts3', 24, true)
objectPlayAnimation('Cutouts3', 'Cutouts3', true);
scaleObject('Cutouts3', 2, 2)
setObjectCamera('Cutouts3', 'hud')
addLuaSprite('Cutouts3', false);
setProperty('Cutouts3.visible', false);

makeAnimatedLuaSprite('Cutouts2', 'zassets/bendy/images/Cutouts/Cutouts2', 690, 50);
addAnimationByPrefix('Cutouts2', 'Cutouts2', 'Cutouts2', 24, true)
objectPlayAnimation('Cutouts2', 'Cutouts2', true);
scaleObject('Cutouts2', 2, 2)
setObjectCamera('Cutouts2', 'hud')
addLuaSprite('Cutouts2', false);
setProperty('Cutouts2.visible', false);
end 

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == 'j1' then
playSound('cutout', 2)	
makeAnimatedLuaSprite('Cutouts3', 'zassets/bendy/images/Cutouts/Cutouts3', 350, -100);
addAnimationByPrefix('Cutouts3', 'Cutouts3', 'Cutouts3', 24, true)
objectPlayAnimation('Cutouts3', 'Cutouts3', true);
scaleObject('Cutouts3', 2, 2)
setObjectCamera('Cutouts3', 'hud')
addLuaSprite('Cutouts3', false);
runTimer('elpepe', 1)
end  
if value1 == 'j2' then
playSound('cutout', 2)
makeAnimatedLuaSprite('Cutouts2', 'zassets/bendy/images/Cutouts/Cutouts2', 700, 200);
addAnimationByPrefix('Cutouts2', 'Cutouts2', 'Cutouts2', 24, true)
objectPlayAnimation('Cutouts2', 'Cutouts2', true);
scaleObject('Cutouts2', 2, 2)
setObjectCamera('Cutouts2', 'hud')
addLuaSprite('Cutouts2', false);
runTimer('pp', 1.5) 
end 
if value1 == '4' then
removeLuaSprite('Cutouts3')
removeLuaSprite('Cutouts2')
end   
   end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'elpepe' then
doTweenX('ADIEU', 'Cutouts3', 900, 0.5, 'linear');  

elseif tag == 'pp' then
doTweenY('ADDIEU', 'Cutouts2', 900, 0.5, 'linear');  
    end
end 

function onTweenCompleted(tag)
if tag == 'ADIEU' then
removeLuaSprite('Cutouts3')
elseif tag == 'ADDIEU' then
removeLuaSprite('Cutouts2')
  end
end