local Carga = 0
local Atacable = false
local Atacado = false

function onCreate()
    
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
    
  makeAnimatedLuaSprite('bfc2a', 'zassets/Ani/bfc2a', 170, 475);
  luaSpriteAddAnimationByPrefix('bfc2a', 'ataque', '0BF attack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('bfc2a', 'dodge', 'boyfriend dodge instance ', 24, false);
  luaSpritePlayAnimation('bfc2a', 'seviene');
  addLuaSprite('bfc2a', true); 
  setProperty('bfc2a.visible', false);

    makeAnimatedLuaSprite('Cardcrap', 'zassets/cup/images/Cardcrap', 1000, 520);
    addAnimationByPrefix('Cardcrap', 'Stand', 'CardCargada', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Arriba', 'ParryArriba', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Abajo', 'CardUsed', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Nada', 'Card but flipped instance ', 24, true);  
    objectPlayAnimation('Cardcrap', 'Nada', true)
    setObjectCamera('Cardcrap', 'hud');
    addLuaSprite('Cardcrap', true);

  makeAnimatedLuaSprite('ouchhead', 'zassets/Ani/ouchhead', 70, 450);
  luaSpriteAddAnimationByPrefix('ouchhead', 'Ouch', 'Ouch instance ', 20, false);
  luaSpritePlayAnimation('ouchhead', 'Ouch');
  addLuaSprite('ouchhead', true); 
  scaleObject('ouchhead', 1.7, 1.7);
  setProperty('ouchhead.visible', false);

    makeAnimatedLuaSprite('Cupheadshoot', 'zassets/cup/images/bull/Cupheadshoot', 755, 318);
    addAnimationByPrefix('Cupheadshoot', 'Stand', 'BulletFX_H-Tween_02 instance 1', 24, true);  
    objectPlayAnimation('Cupheadshoot', 'Stand', false)
    addLuaSprite('Cupheadshoot', true);
    setProperty('Cupheadshoot.visible', false);

    makeAnimatedLuaSprite('Cupheadshoot2', 'zassets/cup/images/bull/Cupheadshoot', 745, 318);
    addAnimationByPrefix('Cupheadshoot2', 'Stand', 'BulletFX_H-Tween_03 instance 1', 33, true);  
    objectPlayAnimation('Cupheadshoot2', 'Stand', false)
    addLuaSprite('Cupheadshoot2', true);
    setProperty('Cupheadshoot2.visible', false);

    if downscroll then
    setProperty('Cardcrap.flipY', true);
    setProperty('Cardcrap.y', 40)
end  
end

function goodNoteHit(id, noteData, noteType)
    if noteType == 'Parry_Note' then
    Carga = 2 
    objectPlayAnimation('Cardcrap', 'Arriba', false)
    runTimer('cardxd', 0.8);
    end
end

function onEvent(name, value1, value2)
if name == "Parry" then
if value1 == 'azul' then
setProperty('Cupheadshoot.visible', true);
setProperty('Cupheadshoot2.visible', true);
runTimer('hpdrain', 0.15, 0);
runTimer('sonido', 0.18, 0);
Atacable = true
  end
end

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and Carga == 2 and mouseReleased() and Carga == 2 then
   doTweenZoom('XDD','camGame', 1, 0.7,'sineInOut')
   objectPlayAnimation('key_space', 'press', true);
   objectPlayAnimation('key_shift', 'press', true);
   setProperty('bfc2a.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('bfc2a', 'ataque');
   runTimer('des', 1); 
   runTimer('cuandoyo', 0.34);
   runTimer('well well well', 0.3);
   cancelTimer('hpdrain')
   cancelTimer('sonido')
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'well well well'  then
objectPlayAnimation('Cardcrap', 'Abajo', false)
setProperty('Cupheadshoot.visible', false);
setProperty('Cupheadshoot2.visible', false);
runTimer('cardxd2', 0.8);
Carga = 0
Atacable = false
end 
  if tag == 'Cancelhpdrain' then
cancelTimer('hpdrain')
cancelTimer('sonido')
  end
  if tag == 'hpdrain' then
characterPlayAnim('dad', 'die', true);
setProperty('health', getProperty('health') -0.055);
end 
  if tag == 'sonido' then
playSound('pea0', 1)
end 
  if tag == 'des' then
setProperty('bfc2a.visible', false);
setProperty('boyfriend.visible', true);
     end 
if tag == 'deios' then
setProperty('ouchhead.visible', false);
setProperty('dad.visible', true);
     end 
if tag == 'cardxd' then
objectPlayAnimation('Cardcrap', 'Stand', true)
end
if tag == 'cardxd2' then
objectPlayAnimation('Cardcrap', 'Nada', true)
end 
if tag == 'cuandoyo' then
  objectPlayAnimation('key_space', 'idle', true);
objectPlayAnimation('key_shift', 'idle', true);
setProperty('ouchhead.visible', true);
setProperty('dad.visible', false);
luaSpritePlayAnimation('ouchhead', 'Ouch');
runTimer('deios', 0.8);
playSound('hurthead', 2)
setProperty('health', getProperty('health') + 0.50);
     end      
   end
end 