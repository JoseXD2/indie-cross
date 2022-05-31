function onCreate()
precacheImage('zassets/Ani/Striker');
precacheImage('zassets/Ani/Piper');
precacheImage('zassets/bendy/images/jumpscares/PiperJumpscare');
precacheImage('zassets/bendy/images/Cutouts/Cutouts1');
precacheImage('zassets/bendy/images/Cutouts/Cutouts2');
precacheImage('zassets/bendy/images/Cutouts/Cutouts3');
precacheImage('zassets/bendy/images/Cutouts/Cutouts4');
precacheImage('zassets/bendy/images/jumpscares/DontmindmeImmajustwalkby');
end 

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == 'scare' then
playSound('boo', 2)
makeAnimatedLuaSprite('PiperJumpscare', 'zassets/bendy/images/jumpscares/PiperJumpscare', 10, 50);
addAnimationByPrefix('PiperJumpscare', 'PiperJumpscare', 'PiperJumpscare', 24, false)
objectPlayAnimation('PiperJumpscare', 'PiperJumpscare', true);
scaleObject('PiperJumpscare', 1, 1)
setObjectCamera('PiperJumpscare', 'hud')
addLuaSprite('PiperJumpscare', false);
runTimer('jujuju', 1.5)
end  
if value1 == 'j1' then
playSound('cutout', 2)
makeAnimatedLuaSprite('Cutouts1', 'zassets/bendy/images/Cutouts/Cutouts1', 60, 0);
addAnimationByPrefix('Cutouts1', 'Cutouts1', 'Cutouts1', 24, false)
objectPlayAnimation('Cutouts1', 'Cutouts1', true);
scaleObject('Cutouts1', 2, 2)
setObjectCamera('Cutouts1', 'hud')
addLuaSprite('Cutouts1', false);
runTimer('ADIEU', 2.5)
end  
if value1 == 'j2' then
playSound('cutout', 2)
makeAnimatedLuaSprite('Cutouts2', 'zassets/bendy/images/Cutouts/Cutouts2', 700, 200);
addAnimationByPrefix('Cutouts2', 'Cutouts2', 'Cutouts2', 24, false)
objectPlayAnimation('Cutouts2', 'Cutouts2', true);
scaleObject('Cutouts2', 2, 2)
setObjectCamera('Cutouts2', 'hud')
addLuaSprite('Cutouts2', false);
runTimer('ADDIEU', 2.5)
end 
if value1 == 'j3' then
playSound('cutout', 2)
makeAnimatedLuaSprite('Cutouts3', 'zassets/bendy/images/Cutouts/Cutouts3', 700, 200);
addAnimationByPrefix('Cutouts3', 'Cutouts3', 'Cutouts3', 24, false)
objectPlayAnimation('Cutouts3', 'Cutouts3', true);
scaleObject('Cutouts3', 2, 2)
setObjectCamera('Cutouts3', 'hud')
addLuaSprite('Cutouts3', false);
runTimer('ADDIEDU', 2.5)
end 
if value1 == 'j4' then
playSound('cutout', 2)
makeAnimatedLuaSprite('Cutouts4', 'zassets/bendy/images/Cutouts/Cutouts4', 200, -100);
addAnimationByPrefix('Cutouts4', 'Cutouts4', 'Cutouts4', 24, false)
objectPlayAnimation('Cutouts4', 'Cutouts4', true);
scaleObject('Cutouts4', 2, 2)
setObjectCamera('Cutouts4', 'hud')
addLuaSprite('Cutouts4', false);
runTimer('ADDDIEU', 2.5)
end 
if value1 == 'pasando' then
makeAnimatedLuaSprite('DontmindmeImmajustwalkby', 'zassets/bendy/images/jumpscares/DontmindmeImmajustwalkby', -1000, -100);
addAnimationByPrefix('DontmindmeImmajustwalkby', 'DontmindmeImmajustwalkby', 'WalkinFhis instance', 24, true)
objectPlayAnimation('DontmindmeImmajustwalkby', 'DontmindmeImmajustwalkby', true);
scaleObject('DontmindmeImmajustwalkby', 1, 1)
setObjectCamera('DontmindmeImmajustwalkby', 'other')
addLuaSprite('DontmindmeImmajustwalkby', false); 
doTweenX('DontmindmeImmajustwalkby1', 'DontmindmeImmajustwalkby', 1300, 6, 'linear'); 
runTimer('ttt', 5);
end 
if value1 == 'adiosbb' then
removeLuaSprite('DontmindmeImmajustwalkby')
      end   
   end
end

function onTweenCompleted(tag)
if tag == 'DontmindmeImmajustwalkby1' then
doTweenX('DontmindmeImmajustwalkby2', 'DontmindmeImmajustwalkby', -1300, 6, 'linear'); 
end
if tag == 'DontmindmeImmajustwalkby2' then
doTweenX('DontmindmeImmajustwalkby1', 'DontmindmeImmajustwalkby', 1300, 6, 'linear'); 
  end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'jujuju' then
removeLuaSprite('PiperJumpscare')	
end 
if tag == 'ADIEU' then
removeLuaSprite('Cutouts1')
elseif tag == 'ADDIEU' then
removeLuaSprite('Cutouts2')
elseif tag == 'ADDIEDU' then
removeLuaSprite('Cutouts3')
elseif tag == 'ADDDIEU' then
removeLuaSprite('Cutouts4')
end
end