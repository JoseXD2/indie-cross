Esquivado = false;
PuedeEsquivar = false;

function onCreate()

  addLuaScript('data/whopeee/fonheadt') 
  addLuaScript('data/whopeee/Healtbardevil')
  addLuaScript('data/whopeee/kadebarDevil')
  addLuaScript('data/whopeee/Boton/botonDodge') 
  addLuaScript('data/whopeee/drenadosen')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/ratings/ratingshead') 
  addLuaScript('images/ut/port/flechaswhendiablo')
  
	makeLuaSprite('devil', 'zassets/bonusSongs/devil', -400, -400);
	setLuaSpriteScrollFactor('devil', 1, 1);
	scaleObject('devil', 2.5, 2.5);
	addLuaSprite('devil', false);

  makeAnimatedLuaSprite('Latetona', 'zassets/bonusSongs/Latetona', 2500, 1520);
  addAnimationByPrefix('Latetona', 'Latetona', 'BoiRun instance ', 24, true);  
  objectPlayAnimation('Latetona', 'Latetona', true)
  addLuaSprite('Latetona', true);
  setProperty('Latetona.visible', false);

  makeAnimatedLuaSprite('latetona2', 'zassets/bonusSongs/latetona2', -1000, 1520);
  addAnimationByPrefix('latetona2', 'latetona2', 'BoiRun instance ', 50, true);  
  objectPlayAnimation('latetona2', 'latetona2', true)
  addLuaSprite('latetona2', true);

    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);

  makeAnimatedLuaSprite('dodgesatanic', 'zassets/Ani/dodgesatanic', 2420, 1600);
  luaSpriteAddAnimationByPrefix('dodgesatanic', 'dodge', 'boyfriend dodge instance ', 24, true);
  luaSpritePlayAnimation('dodgesatanic', 'seviene');
  addLuaSprite('dodgesatanic', false); 
  scaleObject('dodgesatanic', 0.8, 0.8);
  setProperty('dodgesatanic.visible', false);

    makeAnimatedLuaSprite('CUpheqdshid', 'zassets/cup/images/CUpheqdshid', 0, 0);
    addAnimationByPrefix('CUpheqdshid', 'CUpheqdshid', 'CUpheqdshid', 24, true);  
    objectPlayAnimation('CUpheqdshid', 'CUpheqdshid', true)
    setObjectCamera('CUpheqdshid', 'other');
    addLuaSprite('CUpheqdshid', true);
end 

function onEvent(name, value1, value2)
if name == "DodgeHead" then
  PuedeEsquivar = true;
  makeAnimatedLuaSprite('Latetona', 'zassets/bonusSongs/Latetona', 3600, 1520);
  addAnimationByPrefix('Latetona', 'Latetona', 'BoiRun instance ', 24, true);  
  objectPlayAnimation('Latetona', 'Latetona', true)  
  addLuaSprite('Latetona', true);
  doTweenX('latetona', 'Latetona', -1700, 3.4, 'linear');  
  runTimer('asbelsenefee', 0.6);
end
if name == "DodgeHead2" then
  runTimer('urigod', 2);
  makeAnimatedLuaSprite('latetona2', 'zassets/bonusSongs/latetona2', -1000, 1520);
  addAnimationByPrefix('latetona2', 'latetona2', 'BoiRun instance ', 50, true);  
  objectPlayAnimation('latetona2', 'latetona2', true)
  addLuaSprite('latetona2', true);
  doTweenX('latetona2uwu', 'latetona2', 3800, 4, 'linear');  
end
if name == "Asbel" then
if value1 == "4" then
  removeLuaSprite('That Annoying Bitch')
  removeLuaSprite('latetona2')
end
end
end

function onUpdate()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   setProperty('dodgesatanic.visible', true);
   setProperty('boyfriend.visible', false);
   runTimer('dos', 1);
   luaSpritePlayAnimation('dodgesatanic', 'dodge');
   Esquivado = true;
   PuedeEsquivar = false;
   end
end

function onTweenCompleted(tag)
if tag == 'latetona' then
removeLuaSprite('Latetona')
end
if tag == 'latetona2uwu' then
removeLuaSprite('Latetona2')  
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'asbelsenefee' and Esquivado == false then
   setProperty('health', 0);
   elseif tag == 'asbelsenefee' and Esquivado == true then
   Esquivado = false;
  end 
  if tag == 'dos' then
   setProperty('dodgesatanic.visible', false);
   setProperty('boyfriend.visible', true);
   end
if tag == 'urigod' then
PuedeEsquivar = true;
runTimer('asbelsenefee', 0.5);
end
end  
