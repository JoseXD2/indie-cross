Esquivado = false;
PuedeEsquivar = false;

function onCreate()

  makeAnimatedLuaSprite('dodgebfNC', 'zassets/Ani/dodgebfNC', 2400, 1535);
  luaSpriteAddAnimationByPrefix('dodgebfNC', 'dodge', 'boyfriend dodge instance', 24, true);
  luaSpritePlayAnimation('dodgebfNC', 'seviene');
  addLuaSprite('dodgebfNC', false); 
  setProperty('dodgebfNC.visible', false);

  makeAnimatedLuaSprite('NMcupheadAttacks', 'zassets/cup/images/bull/NMcupheadAttacks', 1000, 1220);
  addAnimationByPrefix('NMcupheadAttacks', 'NMcupheadAttacks', 'DeathBlast', 50, true);  
  objectPlayAnimation('NMcupheadAttacks', 'NMcupheadAttacks', true)
  scaleObject('NMcupheadAttacks', 2, 2);
  addLuaSprite('NMcupheadAttacks', true);
  setProperty('NMcupheadAttacks.visible', false);

  makeAnimatedLuaSprite('hadokenNC', 'zassets/Ani/hadokenNC', 1200, 1190);
  luaSpriteAddAnimationByPrefix('hadokenNC', 'Hadoken', 'Hadoken or Roundabout', 20, false);
  luaSpritePlayAnimation('hadokenNC', 'Hadoken');
  addLuaSprite('hadokenNC', true); 
  scaleObject('hadokenNC', 1.3, 1.3);
  setProperty('hadokenNC.visible', false);
  runTimer('NMcupheadAttacksNO', 0.15, 1);

  precacheImage('zassets/cup/images/bull/NMcupheadAttacks');
end

function onEvent(name, value1, value2)
if name == "DodgeHead" then
  triggerEvent('Screen Shake', '0.2, 0.025', '0.2, 0.0010');
  setProperty('hadokenNC.visible', true);
  setProperty('dad.visible', false);
  luaSpritePlayAnimation('hadokenNC', 'Hadoken');
  runTimer('deos', 0.8);
  playSound('shoothead', 2)
	PuedeEsquivar = true;
  makeAnimatedLuaSprite('NMcupheadAttacks', 'zassets/cup/images/bull/NMcupheadAttacks', 1000, 1420);
  addAnimationByPrefix('NMcupheadAttacks', 'NMcupheadAttacks', 'DeathBlast', 50, true);  
  objectPlayAnimation('NMcupheadAttacks', 'NMcupheadAttacks', true)
  scaleObject('NMcupheadAttacks', 1.1, 1.1);
  addLuaSprite('NMcupheadAttacks', true);
	runTimer('asbelsenefee', 0.7);
  doTweenX('secuGdsf', 'NMcupheadAttacks', 3000, 1.7, 'linear');  
	end
end

function onUpdate()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
    playSound('dodgehead', 5)
   setProperty('dodgebfNC.visible', true);
   setProperty('atackbfNC.visible', false);
   setProperty('boyfriend.visible', false);
   runTimer('dos', 1);
   luaSpritePlayAnimation('dodgebfNC', 'dodge');
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
   setProperty('dodgebfNC.visible', false);
   setProperty('boyfriend.visible', true);
   end
  if tag == 'deos' then
   setProperty('hadokenNC.visible', false);
   setProperty('dad.visible', true);
end   
if tag == 'NMcupheadAttacksNO' then
   removeLuaSprite('NMcupheadAttacks')
  end  
end  

function onTweenCompleted(tag)
  if tag == 'secuGdsf' then
    removeLuaSprite('NMcupheadAttacks')
  end
end