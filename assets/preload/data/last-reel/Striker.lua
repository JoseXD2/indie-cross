EsquivadoS = false
PuedeEsquivarS = false
PuedeAtacarP = false
AtacadoS = 0
DiedS = false
AhiS = false
CargaS = 4

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "walks" and not AhiS == true  then
  makeAnimatedLuaSprite('Striker', 'zassets/Ani/Striker', -1600, 560);
  luaSpriteAddAnimationByPrefix('Striker', 'Ataque1', 'PunchAttack_container instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Ataque2', 'regeg instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Walk', 'Str walk instance ', 20, true);
  luaSpriteAddAnimationByPrefix('Striker', 'Golpeado', 'Sticker  instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Die', 'I ded instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Idle', 'strrr instance', 24, true);
  luaSpritePlayAnimation('Striker', 'Idle');
  scaleObject('Striker', 1.7, 1.7);
  addLuaSprite('Striker', false); 
doTweenX('StrikerW', 'Striker', 600, 5, 'linear');   
luaSpritePlayAnimation('Striker', 'Walk');
end 
if value1 == "atas" and not DiedS == true then
setProperty('Striker.x', 600)
setProperty('Striker.y', 560) 
luaSpritePlayAnimation('Striker', 'Ataque1'); 
runTimer('Ohnos', 1, 1);
end 
if value1 == "4" then 
PuedeAtacarP = true
runTimer('dexos', 5, 1);
     end 
  end
end

function onUpdate()
if PuedeEsquivarS == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() and AhiS == true then
   setProperty('BoyFriendDodge.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
   runTimer('dexoS', 5, 1);
   runTimer('dosS', 1, 1); 
   setProperty('Striker.x', 620)
   setProperty('Striker.y', 570)  
   luaSpritePlayAnimation('Striker', 'Ataque2');
   runTimer('sech', 0.5, 1);   
   EsquivadoS = true
   PuedeEsquivarS = false
   PuedeAtacarP = false
   PuedeEsquivarS = false;
   AhiS = true
end    
if PuedeEsquivarS == true and getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and CargaS == 4 and AtacadoS == 0 and AhiS == true then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'Attack');
   setProperty('BoyFriendAtt.x', 500)
   setProperty('BoyFriendAtt.y', 450) 
   cancelTimer('DIES');
   setProperty('Striker.x', 520)
   setProperty('Striker.y', 477) 
   luaSpritePlayAnimation('Striker', 'Golpeado'); 
   runTimer('deosS', 0.6, 1); 
   runTimer('dexoS', 5, 1); 
   EsquivadoS = true;
   PuedeEsquivarS = false; 
   AtacadoS = 1; 
   AhiS = true
end    
if PuedeEsquivarS == true and getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and CargaS == 4 and AtacadoS == 1 and AhiS == true then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'Attack');
   setProperty('BoyFriendAtt.x', 500)
   setProperty('BoyFriendAtt.y', 450) 
   cancelTimer('DIES');
   setProperty('Striker.x', 400)
   setProperty('Striker.y', 512) 
   luaSpritePlayAnimation('Striker', 'Die'); 
   runTimer('ojitoS', 2, 1); 
   runTimer('dexoS', 5, 1); 
   AtacadoS = 0;
   EsquivadoS = true;
   PuedeEsquivarS = false; 
   AhiS = false; 
   end   
end

function onCreatePost()
    makeAnimatedLuaSprite('key_shift', 'MobileGame', 50, 488);
    addAnimationByPrefix('key_shift', 'idle', 'Attack Avaiable instance ', 24, true);
    addAnimationByPrefix('key_shift', 'press', 'Attack Click instance ', 24, true);
    addLuaSprite('key_shift', true);
    setObjectCamera('key_shift', 'hud')
    objectPlayAnimation('key_shift', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_shift', 0.9, 0.9);

    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);

setProperty('lol.alpha', 0);
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'DIES' and EsquivadoS == false then
makeLuaSprite('lk', 'zassets/bendy/images/Damage01', 0, 0)
scaleObject('lk', 0.7, 0.7)
setScrollFactor('lk', 0, 0)
characterPlayAnim('boyfriend', 'hurt');
addLuaSprite('lk', true) 
setObjectCamera('lk', 'camHUD'); 
setProperty('lk.alpha', 1)
runTimer('ufu', 3, 1) 
setProperty('Striker.x', 690)
setProperty('Striker.y', 570)   
luaSpritePlayAnimation('Striker', 'Ataque2');
runTimer('sech', 0.5, 1);   
EsquivadoS = false; 
PuedeEsquivarS = false; 
PuedeAtacarP = false; 
elseif tag == 'DIES' and EsquivadoS == true then
setProperty('Striker.x', 690)
setProperty('Striker.y', 570)  
luaSpritePlayAnimation('Striker', 'Idle'); 
EsquivadoS = false;
PuedeEsquivarS = false; 
end 
if tag == 'dosS' then
setProperty('BoyFriendDodge.visible', false);
setProperty('boyfriend.visible', true);
end
if tag == 'deosS' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
setProperty('Striker.x', 680)
setProperty('Striker.y', 570)    
luaSpritePlayAnimation('Striker', 'Idle'); 
end
if tag == 'ojitoS' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
removeLuaSprite('Striker')
AhiS = false
end
if tag == 'Ohnos' then 
PuedeEsquivarS = true
runTimer('DIES', 0.5, 1);   
end
if tag == 'dexoS' then
   PuedeAtacarP = true
   CargaS = 4;
end  
if tag == 'sech' then
setProperty('Striker.x', 690)
setProperty('Striker.y', 570)   
luaSpritePlayAnimation('Striker', 'Idle'); 
   end
if tag == 'ufu' then
doTweenAlpha('adio', 'lk', 0, 1, 'linear')  
  end   
end  

function onTweenCompleted(tag)
  if tag == 'StrikerW' then
   luaSpritePlayAnimation('Striker', 'Idle');
   AhiS = true
  end
end