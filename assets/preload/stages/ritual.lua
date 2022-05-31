Esquivado = false;
PuedeEsquivar = false;

function onCreate()
  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/kadebarRitual')
  addLuaScript('data/whopeee/DrenadoSen') 
  addLuaScript('data/whopeee/fontbendy') 
   addLuaScript('data/whopeee/ratings/ratingsbendy')
  addLuaScript('data/whopeee/Boton/BotonDodge') 
  addLuaScript('data/whopeee/camara') 
  addLuaScript('images/ut/port/flechasritual')
  
  makeLuaSprite('SammyS', 'zassets/bendy/images/SammyS', -1550, -1050);
  setLuaSpriteScrollFactor('SammyS', 1, 1);
  scaleObject('SammyS', 2, 1.8);
  addLuaSprite('SammyS', false);

      makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);
    setProperty('key_space.visible', false);

  makeAnimatedLuaSprite('DodgeSammy', 'zassets/Ani/DodgeSammy', 1400, 470);
  luaSpriteAddAnimationByPrefix('DodgeSammy', 'dodge', 'Dodge instance ', 24, true);
  luaSpritePlayAnimation('DodgeSammy', 'seviene');
  addLuaSprite('DodgeSammy', false); 
  setProperty('DodgeSammy.visible', false);

  makeAnimatedLuaSprite('Hacha', 'zassets/Ani/Hacha', 360, 200);
  addAnimationByPrefix('Hacha', 'Hacha', 'Axe attack', 24, false);  
  objectPlayAnimation('Hacha', 'Hacha', true)
  scaleObject('Hacha', 1.5, 1.5); 
  setProperty('Hacha.visible', false);
  addLuaSprite('Hacha', true);

  makeAnimatedLuaSprite('Candles', 'zassets/bendy/images/Candles', 280, 870);
  addAnimationByPrefix('Candles', 'Candles', 'Candless', 24, true);  
  objectPlayAnimation('Candles', 'Candles', true)
  scaleObject('Candles', 2.5, 2.5); 
  addLuaSprite('Candles', true);

  makeAnimatedLuaSprite('Luz', 'zassets/bendy/images/Candles', 70, 660);
  addAnimationByPrefix('Luz', 'Luz', 'Lights', 24, true);  
  objectPlayAnimation('Luz', 'Luz', true)
  scaleObject('Luz', 2.5, 2.5); 
  addLuaSprite('Luz', true);

    makeLuaSprite('jeje', 'zassets/bendy/images/jeje', 0, 0);
    setLuaSpriteScrollFactor('jeje', 1.5, 1.5);
    scaleObject('jeje', 1, 1);
    setObjectCamera('jeje', 'hud');
    addLuaSprite('jeje', true);

    setProperty('cameraSpeed', 0.38)
  
 setProperty('Boton2.visible', false);

end

function onUpdate()
if getProperty('jeje.alpha') == 1 then
    doTweenAlpha('jejeTUIN', 'jeje', 0, 2, 'quadInOut');
    doTweenColor('boyfriend', 'boyfriend', '402300', 2, 'linear');
    doTweenColor('dad', 'dad', '402300', 2, 'linear');
    doTweenColor('SammyS', 'SammyS', '402300', 2, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'jejeTUIN' then
    doTweenAlpha('jejeTUINparte2', 'jeje', 1, 2, 'quadInOut');
    doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 2, 'linear');
    doTweenColor('dad', 'dad', 'FFFFFF', 2, 'linear');
    doTweenColor('SammyS', 'SammyS', 'FFFFFF', 2, 'linear');
    end
end

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'hola' then
setProperty('Boton2.visible', true);
setProperty('key_space.visible', true);
end
if value1 == 'hacha' then
setProperty('Hacha.visible', true);
PuedeEsquivar = true;
runTimer('dos', 1);
runTimer('asbelsenefee', 0.25);
      end 
   end
end

function onUpdate()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   setProperty('DodgeSammy.visible', true);
   setProperty('boyfriend.visible', false); 
   Esquivado = true;
   PuedeEsquivar = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'asbelsenefee' and Esquivado == false then
   setProperty('health', 0);
   elseif tag == 'asbelsenefee' and Esquivado == true then
   Esquivado = false;
  end 
    if tag == 'dos' then
   setProperty('DodgeSammy.visible', false);
   setProperty('boyfriend.visible', true);
   end 
end  