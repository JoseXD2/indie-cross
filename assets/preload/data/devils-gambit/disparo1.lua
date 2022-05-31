local Carga = 0
local Atacable = false
local Atacado = false

function onCreate()
    
  makeAnimatedLuaSprite('dodgeNC', 'zassets/Ani/dodgeNC', 1100, 1375);
  luaSpriteAddAnimationByPrefix('dodgeNC', 'ouch', 'Dodgez', 24, false);
  addLuaSprite('dodgeNC', true); 
  scaleObject('dodgeNC', 1.3, 1.3);
  setProperty('dodgeNC.visible', false);

  makeAnimatedLuaSprite('atackbfNC', 'zassets/Ani/atackbfNC', 1200, 1575);
  luaSpriteAddAnimationByPrefix('atackbfNC', 'ataque', '0BF attack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('atackbfNC', 'dodge', 'boyfriend dodge instance ', 24, false);
  luaSpritePlayAnimation('atackbfNC', 'seviene');
  addLuaSprite('atackbfNC', true); 
  setProperty('atackbfNC.visible', false);

    makeAnimatedLuaSprite('Cardcrap', 'zassets/cup/images/Cardcrap', 1000, 520);
    addAnimationByPrefix('Cardcrap', 'Stand', 'CardCargada', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Arriba', 'ParryArriba', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Abajo', 'CardUsed', 24, true);  
    addAnimationByPrefix('Cardcrap', 'Nada', 'Card but flipped instance ', 24, true);  
    objectPlayAnimation('Cardcrap', 'Nada', true)
    setObjectCamera('Cardcrap', 'hud');
    addLuaSprite('Cardcrap', true);

    makeAnimatedLuaSprite('NMcupheadBull', 'zassets/cup/images/bull/NMcupheadBull', 1900, 1500);
    addAnimationByPrefix('NMcupheadBull', 'Stand', 'Shot01 instance 1', 60, true);  
    objectPlayAnimation('NMcupheadBull', 'Stand', false)
    addLuaSprite('NMcupheadBull', true);
    setProperty('NMcupheadBull.visible', false);

    makeAnimatedLuaSprite('NMcupheadBull2', 'zassets/cup/images/bull/NMcupheadBull', 1900, 1500);
    addAnimationByPrefix('NMcupheadBull2', 'Stand', 'Shot02 instance 1', 35, true);  
    objectPlayAnimation('NMcupheadBull2', 'Stand', false)
    addLuaSprite('NMcupheadBull2', true);
    setProperty('NMcupheadBull2.visible', false);

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
setProperty('NMcupheadBull.visible', true);
setProperty('NMcupheadBull2.visible', true);
runTimer('hpdrain', 0.11, 0);
Atacable = true
	end
end

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and Carga == 2 then
   doTweenZoom('XDD','camGame', 0.8, 0.5,'sineInOut')
   objectPlayAnimation('key_shift', 'press', true);
   setProperty('dodgebfNC.visible', false);
   setProperty('boyfriend.visible', false);
   setProperty('atackbfNC.visible', true);
   luaSpritePlayAnimation('atackbfNC', 'ataque');
   runTimer('des', 1, 1);
   runTimer('cuandoyo', 0.34, 1);
   runTimer('well well well', 0.3);
   cancelTimer('hpdrain');
   objectPlayAnimation('Cardcrap', 'Abajo', false)
   runTimer('cardxd2', 1);
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'well well well'  then
objectPlayAnimation('Cardcrap', 'Nada', false)
setProperty('NMcupheadBull.visible', false);
setProperty('NMcupheadBull2.visible', false);
Carga = 0
Atacable = false
end 
	if tag == 'Cancelhpdrain' then
		cancelTimer('hpdrain');
	end
	if tag == 'hpdrain' then
		playSound('pea0', 2)
		characterPlayAnim('dad', 'die', true);
		setProperty('health', getProperty('health') -0.077); 
end 
  if tag == 'des' then
   setProperty('atackbfNC.visible', false);
   setProperty('boyfriend.visible', true);
end 
if tag == 'deios' then
   setProperty('dodgeNC.visible', false);
   setProperty('dad.visible', true);
end   
if tag == 'cardxd' then
objectPlayAnimation('Cardcrap', 'Stand', true)
end
if tag == 'cardxd2' then
objectPlayAnimation('Cardcrap', 'Nada', true)
end 
if tag == 'cuandoyo' then
objectPlayAnimation('key_shift', 'idle', true);  
setProperty('dodgeNC.visible', true);
setProperty('dad.visible', false);
luaSpritePlayAnimation('dodgeNC', 'Ouch');
runTimer('deios', 0.8);
playSound('dodgehead', 5)
setProperty('health', getProperty('health') + 0.40);     
      end 
   end
end 