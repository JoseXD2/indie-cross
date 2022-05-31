local Carga = 0
local Atacable = false
local Atacado = false

function onCreate()
    
  makeAnimatedLuaSprite('bfc1a', 'zassets/Ani/bfc1a', 170, 475);
  luaSpriteAddAnimationByPrefix('bfc1a', 'ataque', '0BF attack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('bfc1a', 'dodge', 'boyfriend dodge instance ', 24, false);
  luaSpritePlayAnimation('bfc1a', 'seviene');
  addLuaSprite('bfc1a', true); 
  setProperty('bfc1a.visible', false);

  addLuaScript('data/whopeee/Boton/botonAtt')

   setProperty('cameraSpeed', 0.70)
    makeAnimatedLuaSprite('Cardcrap', 'zassets/cup/images/Cardcrap', 1000, 520);
    addAnimationByPrefix('Cardcrap', 'Stand', 'CardCargada', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Arriba', 'ParryArriba', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Abajo', 'CardUsed', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Nada', 'Card but flipped instance ', 24, true);  
    objectPlayAnimation('Cardcrap', 'Nada', true)
    setObjectCamera('Cardcrap', 'hud');
    addLuaSprite('Cardcrap', true);

  makeAnimatedLuaSprite('OuchHeded', 'zassets/Ani/OuchHeded', 60, 310);
  luaSpriteAddAnimationByPrefix('OuchHeded', 'Ouch', 'Hurt', 20, false);
  luaSpritePlayAnimation('OuchHeded', 'Ouch');
  addLuaSprite('OuchHeded', true); 
  scaleObject('OuchHeded', 1.7, 1.7);
  setProperty('OuchHeded.visible', false);

    makeAnimatedLuaSprite('Cupheadshoot', 'zassets/cup/images/bull/Cupheadshoot', 700, 320);
    addAnimationByPrefix('Cupheadshoot', 'Stand', 'BulletFX_H-Tween_02 instance 1', 30, true);  
    objectPlayAnimation('Cupheadshoot', 'Stand', false)
    addLuaSprite('Cupheadshoot', true);
    setProperty('Cupheadshoot.visible', false);
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
runTimer('hpdrain', 0.1, 0);
Atacable = true
	end  
end  
if name == 'Asbel' then
if value1 == 'rotar' then
doTweenAngle('pene', 'camHUD', -360, 0.3, 'cubic');  
      end 
   end
end 

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and Carga == 2 and mouseReleased() and Carga == 2 then
   setProperty('bfc1a.visible', true);
   setProperty('boyfriend.visible', false);
   luaSpritePlayAnimation('bfc1a', 'ataque');
   runTimer('des', 1); 
   runTimer('cuandoyo', 0.34);
   runTimer('well well well', 0.3);
   cancelTimer('hpdrain');
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'well well well'  then
objectPlayAnimation('Cardcrap', 'Abajo', false)
setProperty('Cupheadshoot.visible', false);
runTimer('cardxd2', 0.8);
Carga = 0
Atacable = false
end 
	if tag == 'Cancelhpdrain' then
		cancelTimer('hpdrain');
	end
	if tag == 'hpdrain' then
		playSound('pea0', 0.5)
		characterPlayAnim('dad', 'Shoot', true);
		setProperty('health', getProperty('health') -0.055); 
end 
  if tag == 'des' then
   setProperty('bfc1a.visible', false);
   setProperty('boyfriend.visible', true);
     end 
if tag == 'deios' then
   setProperty('OuchHeded.visible', false);
   setProperty('dad.visible', true);
     end 
if tag == 'cardxd' then
objectPlayAnimation('Cardcrap', 'Stand', true)
end
if tag == 'cardxd2' then
objectPlayAnimation('Cardcrap', 'Nada', true)
end 
if tag == 'cuandoyo' then
setProperty('OuchHeded.visible', true);
setProperty('dad.visible', false);
luaSpritePlayAnimation('OuchHeded', 'Ouch');
runTimer('deios', 0.8);
playSound('hurthead', 2)
setProperty('health', getProperty('health') + 0.50);   
   end
end 