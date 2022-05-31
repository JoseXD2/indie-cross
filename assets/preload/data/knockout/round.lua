Esquivado = false; 
PuedeEsquivar = false;

function onCreate()
precacheImage('Roundabout');
end

function onEvent(name, value1, value2)
if name == "DodgeHead2" then
	PuedeEsquivar = true;
  setProperty('PUTA.visible', true);
  setProperty('dad.visible', false);
  luaSpritePlayAnimation('PUTA', 'Hadoken');  
  playSound('boing', 2)
  runTimer('attr', 0.2);
  runTimer('deosU', 0.8);
	end
end

function onUpdate()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased()  then
   playSound('dodgehead', 4)
   setProperty('bfc2ad.visible', true);
   setProperty('boyfriend.visible', false);
   runTimer('dgs', 1);
   objectPlayAnimation('key_space', 'press', true);
   Esquivado = true;
   PuedeEsquivar = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
 if tag == 'attr' then
  makeAnimatedLuaSprite('Roundabout', 'zassets/cup/images/bull/Roundabout', 340, 460);
  addAnimationByPrefix('Roundabout', 'Roundabout', 'Roundabout', 50, true);  
  objectPlayAnimation('Roundabout', 'Roundabout', true)
  setProperty('Roundabout.alpha', 0.9);
  addLuaSprite('Roundabout', false);
  scaleObject('Roundabout', 1.4, 1.4);
  runTimer('Cagaste2', 0.7);
  doTweenX('Rounda', 'Roundabout', 2000, 1.2, 'linear'); 
end
   if tag == 'Cagaste2' and Esquivado == false then
   setProperty('health', 0);
   elseif tag == 'Cagaste2' and Esquivado == true then
   Esquivado = false;
   elseif tag == 'Cagaste1.5' then
   runTimer('Cagaste2', 0.5);
   PuedeEsquivar = true;
   end
     if tag == 'dgs' then
   objectPlayAnimation('key_space', 'idle', true);    
   setProperty('bfc2ad.visible', false);
   setProperty('boyfriend.visible', true);
   end 
   if tag == 'piu' then
  removeLuaSprite('Roundabout')
  makeAnimatedLuaSprite('Roundabout2', 'zassets/cup/images/bull/Roundabout', 1900, 460);
  addAnimationByPrefix('Roundabout2', 'Roundabout', 'Roundabout', 50, true);  
  objectPlayAnimation('Roundabout2', 'Roundabout', true)
  addLuaSprite('Roundabout2', true);
  setProperty('Roundabout2.alpha', 0.9);
  scaleObject('Roundabout2', 1.4, 1.4);
  addLuaSprite('Roundabout2', true);
  doTweenX('Rounda2', 'Roundabout2', -1700, 2, 'linear');
end 
if tag == 'deosU' then
   setProperty('PUTA.visible', false);
   setProperty('dad.visible', true);
   end   
end

function onTweenCompleted(tag)
  if tag == 'Rounda' then
  runTimer('Cagaste1.5', 0.000001);
  runTimer('piu', 0.15);
  elseif tag == 'Rounda2' then 
  removeLuaSprite('Roundabout2')
  end
end