Esquivado = false;
PuedeEsquivar = false;

function onCreate()
  if dadName == '4bendy' then
    makeAnimatedLuaSprite('icono', 'icons/nbicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
    addAnimationByPrefix('icono', 'nor', 'nightmare bendy normal', 24, false)
    addAnimationByPrefix('icono', 'perder', 'nightmare bendy normal', 24, false)
    setScrollFactor('icono', 0, 0)
    setObjectCamera('icono', 'other')
    addLuaSprite('icono', false)
    objectPlayAnimation('icono', 'nor', false)
  end
end

function onUpdate(elapsed)
  if dadName == '4bendy' then
    setProperty('iconP2.alpha', 0)
    if getProperty('health') > 1.6 then
      objectPlayAnimation('icono', 'perder', false)
    elseif getProperty('health') < 0.4 then
      objectPlayAnimation('icono', 'ganegey', false)
    else
      objectPlayAnimation('icono', 'nor', false)
    end
  end
  setProperty('camOther.zoom', getProperty('camHUD.zoom'))
  setProperty('icono.x', getProperty('iconP2.x'))
  setProperty('icono.angle', getProperty('iconP2.angle'))
  setProperty('icono.y', getProperty('iconP2.y') + 1)
  setProperty('icono.scale.x', getProperty('iconP2.scale.x'))
  setProperty('icono.scale.y', getProperty('iconP2.scale.y'))
end

function onEvent(name, value1, value2)
if value1 == "fisherl" then
makeAnimatedLuaSprite('Fisher', 'zassets/Ani/Fisher', -1500, 700);
luaSpriteAddAnimationByPrefix('Fisher', 'Ataque1', 'WalkingFish instance ', 24, true);
luaSpritePlayAnimation('Fisher', 'Ataque1');
addLuaSprite('Fisher', true); 
scaleObject('Fisher', 0.9, 0.9);
setProperty('Fisher.y', 490) 
doTweenX('FisherL', 'Fisher', 3000, 3, 'linear');   
runTimer('urigod', 1.2);
end 
if value1 == "fisherr" then
makeAnimatedLuaSprite('Fisher', 'zassets/Ani/Fisher', 2000, 700);
luaSpriteAddAnimationByPrefix('Fisher', 'Ataque2', 'WalkingFish from the Right instance ', 24, true);
luaSpritePlayAnimation('Fisher', 'Ataque2');
addLuaSprite('Fisher', true); 
scaleObject('Fisher', 0.9, 0.9);
setProperty('Fisher.y', 490) 
doTweenX('FisherR', 'Fisher', -2000, 3, 'linear');   
runTimer('urigod', 0.2);
end 
end

function onUpdatePost()
   if PuedeEsquivar == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   setProperty('BoyFriendDodge.visible', true);
   setProperty('boyfriend.visible', false);
   runTimer('dos', 1);
   luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
   Esquivado = true;
   PuedeEsquivar = false;
   end
end

function onTweenCompleted(tag)
if tag == 'FisherL' then
removeLuaSprite('Fisher')
end
if tag == 'FisherR' then
removeLuaSprite('Fisher')  
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'efeporgay' and Esquivado == false then
makeLuaSprite('lk', 'zassets/bendy/images/Damage01', 0, 0)
scaleObject('lk', 0.7, 0.7)
setScrollFactor('lk', 0, 0)
addLuaSprite('lk', true) 
setObjectCamera('lk', 'camHUD'); 
setProperty('lk.alpha', 1)
runTimer('ufu', 5, 1)  
characterPlayAnim('boyfriend', 'hurt');
   PuedeEsquivar = false;
   elseif tag == 'efeporgay' and Esquivado == true then
   Esquivado = false;
  end 
  if tag == 'dos' then
   setProperty('BoyFriendDodge.visible', false);
   setProperty('boyfriend.visible', true);
   end
if tag == 'urigod' then
PuedeEsquivar = true;
runTimer('efeporgay', 0.3);
end
if tag == 'ufu' then
doTweenAlpha('adio', 'lk', 0, 1, 'linear')  
  end   
end 