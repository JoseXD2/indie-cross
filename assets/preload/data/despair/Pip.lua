EsquivadoP = false
PuedeEsquivarP = false
PuedeAtacarP = false
AtacadoP = 0
DiedP = false
AhiP = false
CargaP = 4

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "walkp" and AhiP == false then
  makeAnimatedLuaSprite('Piper', 'zassets/Ani/PiperDespair', 2300, 550);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque1', 'PipAttack instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque2', 'PeepAttack instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Walk', 'pip walk instance ', 20, true);
  luaSpriteAddAnimationByPrefix('Piper', 'Golpeado', 'Piper gets Hit instance ', 20, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Die', 'Piper ded instance ', 20, true);
  luaSpriteAddAnimationByPrefix('Piper', 'Idle', 'Piperr instance ', 20, true);
  luaSpritePlayAnimation('Piper', 'Idle');
  addLuaSprite('Piper', false); 
  scaleObject('Piper', 1.7, 1.7);
doTweenX('PiperW', 'Piper', 1400, 3, 'linear');   
luaSpritePlayAnimation('Piper', 'Walk');
end 
if value1 == "atap" and not DiedP == true then
setProperty('Piper.x', 1300)
setProperty('Piper.y', 490) 
luaSpritePlayAnimation('Piper', 'Ataque1'); 
runTimer('Ohno', 1, 1);
end 
if value1 == "4" then 
PuedeAtacarP = true
     end 
	end
end

function onUpdate()
if PuedeEsquivarP == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
setProperty('BoyFriendDodge.visible', true);
setProperty('boyfriend.visible', false);
luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
runTimer('dexo', 5, 1);
runTimer('dos', 1, 1); 
setProperty('Piper.x', 1150)
setProperty('Piper.y', 320)  
luaSpritePlayAnimation('Piper', 'Ataque2');
runTimer('ete', 0.5, 1);  
EsquivadoP = true
PuedeEsquivarP = false
PuedeAtacarP = false
PuedeEsquivarP = false;
AhiP = true
end    
if PuedeEsquivarP == true and getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and CargaP == 4 and AtacadoP == 0 and AhiP == true then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   cancelTimer('DIE');
   setProperty('BoyFriendAtt.x', 1000)
   setProperty('BoyFriendAtt.y', 450) 
   setProperty('Piper.x', 1300)
   setProperty('Piper.y', 410) 
   luaSpritePlayAnimation('Piper', 'Golpeado'); 
   runTimer('deos', 0.6, 1); 
   runTimer('dexo', 5, 1); 
   EsquivadoP = true;
   AtacadoP = AtacadoP + 1;
   PuedeEsquivarP = false; 
   AhiP = true
end    
if PuedeEsquivarP == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') and CargaP == 4 and AtacadoP == 1 and AhiP == true then   
   setProperty('BoyFriendAtt.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('BoyFriendAtt', 'AttackAlt');
   setProperty('BoyFriendAtt.x', 1000)
   setProperty('BoyFriendAtt.y', 450) 
   cancelTimer('DIE');
   setProperty('Piper.x', 1200)
   setProperty('Piper.y', 380) 
   luaSpritePlayAnimation('Piper', 'Die'); 
   runTimer('ojito', 2, 1); 
   runTimer('dexo', 5, 1); 
   EsquivadoP = true;
   AtacadoP = 0;
   PuedeEsquivarP = false; 
   AhiP = false
   end   
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'DIE' and EsquivadoP == false then
makeLuaSprite('lk', 'zassets/bendy/images/Damage01', 0, 0)
scaleObject('lk', 0.7, 0.7)
setScrollFactor('lk', 0, 0)
addLuaSprite('lk', true) 
setObjectCamera('lk', 'camHUD'); 
setProperty('lk.alpha', 1)
runTimer('ufu', 3, 1)  
characterPlayAnim('boyfriend', 'hurt');
setProperty('Piper.x', 1150)
setProperty('Piper.y', 320)  
luaSpritePlayAnimation('Piper', 'Ataque2');
EsquivadoP = false; 
PuedeEsquivarP = false; 
PuedeAtacarP = false; 
runTimer('ete', 0.5, 1);  
elseif tag == 'DIE' and EsquivadoP == true then
setProperty('Piper.x', 1380)
setProperty('Piper.y', 550)    
luaSpritePlayAnimation('Piper', 'Idle'); 
EsquivadoP = false;
PuedeEsquivarP = false; 
end 
if tag == 'dos' then
setProperty('BoyFriendDodge.visible', false);
setProperty('boyfriend.visible', true);
end
if tag == 'deos' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
setProperty('Piper.x', 1380)
setProperty('Piper.y', 550)    
luaSpritePlayAnimation('Piper', 'Idle'); 
end
if tag == 'ojito' then
setProperty('BoyFriendAtt.visible', false);
setProperty('boyfriend.visible', true);
removeLuaSprite('Piper')
AhiP = false
end
if tag == 'Ohno' then 
PuedeEsquivarP = true
runTimer('DIE', 0.5, 1);   
end
if tag == 'dexo' then
   PuedeAtacarP = true
   CargaP = 4;
end  
if tag == 'ete' then
setProperty('Piper.x', 1380)
setProperty('Piper.y', 550)    
luaSpritePlayAnimation('Piper', 'Idle');
   end
if tag == 'ufu' then
doTweenAlpha('adio', 'lk', 0, 1, 'linear')  
  end   
end 

function onTweenCompleted(tag)
  if tag == 'PiperW' then
   luaSpritePlayAnimation('Piper', 'Idle');
   AhiP = true
  end
end 