Esquivado = false;
PuedeEsquivar = false;

function onCreate()

  makeAnimatedLuaSprite('bfc2ad', 'zassets/Ani/bfc2ad', 1300, 455);
  luaSpriteAddAnimationByPrefix('bfc2ad', 'dodge', 'boyfriend dodge instance ', 24, true);
  luaSpritePlayAnimation('bfc2ad', 'seviene');
  addLuaSprite('bfc2ad', true); 
  setProperty('bfc2ad.visible', false);

  makeAnimatedLuaSprite('PUTA', 'zassets/Ani/PUTA', -100, 150);
  luaSpriteAddAnimationByPrefix('PUTA', 'Hadoken', 'Hadoken!! instance ', 24, false);
  luaSpritePlayAnimation('PUTA', 'Hadoken');
  addLuaSprite('PUTA', false); 
  scaleObject('PUTA', 1.7, 1.7);
  setProperty('PUTA.visible', false);
end

function onEvent(name, value1, value2)
if name == "DodgeHead" then
  setProperty('PUTA.visible', true);
  setProperty('dad.visible', false);
  luaSpritePlayAnimation('PUTA', 'Hadoken');
  runTimer('deos', 0.8);
  playSound('shoothead', 2)
	PuedeEsquivar = true;
  makeAnimatedLuaSprite('CupheadHadoken', 'zassets/cup/images/bull/CupheadHadoken', 200, 320);
  addAnimationByPrefix('CupheadHadoken', 'CupheadHadoken', 'CupheadHadoken', 50, true);  
  objectPlayAnimation('CupheadHadoken', 'CupheadHadoken', true)
  addLuaSprite('CupheadHadoken', true);
  setProperty('CupheadHadoken.alpha', 0.9);
	runTimer('asbelsenefee', 0.5);
  doTweenX('secuGdsf', 'CupheadHadoken', 1700, 1.4, 'linear');  
	end
end

function onUpdate()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   playSound('dodgehead', 4)
   setProperty('bfc2ad.visible', true);
   setProperty('boyfriend.visible', false);
   runTimer('dos', 1);
   luaSpritePlayAnimation('bfc2ad', 'dodge');
   Esquivado = true;
   PuedeEsquivar = false;
   objectPlayAnimation('key_space', 'press', true);
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'asbelsenefee' and Esquivado == false then
   setProperty('health', 0);
   elseif tag == 'asbelsenefee' and Esquivado == true then
   Esquivado = false;
  end 
  if tag == 'dos' then
    objectPlayAnimation('key_space', 'idle', true);
   setProperty('bfc2ad.visible', false);
   setProperty('boyfriend.visible', true);
   end
  if tag == 'deos' then
   setProperty('PUTA.visible', false);
   setProperty('dad.visible', true);
   end
end  

function onTweenCompleted(tag)
  if tag == 'secuGdsf' then
    removeLuaSprite('CupheadHadoken')
  end
end