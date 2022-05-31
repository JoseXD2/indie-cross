function onCreate()

  addLuaScript('data/whopeee/fontsans') 
  addLuaScript('data/whopeee/HealthbarSans')
  addLuaScript('data/whopeee/kadebarSansN')
  addLuaScript('data/whopeee/shake')
  addLuaScript('data/whopeee/load/snas')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/ratings/ratingssansn') 
  addLuaScript('data/whopeee/Boton/BotonDodge')
  addLuaScript('images/ut/port/flechassansn')
  addLuaScript('data/whopeee/load/snasded')
  setProperty('debugKeysChart', null);

  setProperty('animatedicon.alpha', 0);
  
 makeAnimatedLuaSprite('NightmareStage', 'zassets/sans/images/Nightmare Sans Stage', -366, -250);
 addAnimationByPrefix('NightmareStage', 'Normal', 'Normal', 24, true);    
 addAnimationByPrefix('NightmareStage', 'Nada', 'Normal', 0.0000000001, true);  
 addAnimationByPrefix('NightmareStage', 'sdfs', 'sdfs', 24, true);  
 objectPlayAnimation('NightmareStage', 'Nada', true)
 scaleObject('NightmareStage', 1.3, 1.2);
 addLuaSprite('NightmareStage', false);

 setProperty('cameraSpeed', 2)

doTweenAlpha('animatediconal', 'animatedicon', 1, 3, 'linear');
doTweenColor('bar', 'bar', '1F1F1F', 0.001, 'linear');

    makeLuaSprite('jejejboy', 'zassets/bendy/images/jejejboy', 1500, -450);
    setLuaSpriteScrollFactor('jejejboy', 1.5, 1.5);
    scaleObject('jejejboy', 1, 1);
    addLuaSprite('jejejboy', true);   

end 

function onEvent(name,value1,value2)
if name == "DodgeSans" then
if value1 == '0' then
doTweenColor('animatedicon', 'animatedicon', '211C1C', 0.8, 'linear');
objectPlayAnimation('NightmareStage', 'Nada', true)
end
 if value1 == '1' then
doTweenColor('animatedicon', 'animatedicon', 'D0FFFF', 0.8, 'linear');  
objectPlayAnimation('NightmareStage', 'Normal', true)
end   
  if value1 == '2' then
doTweenColor('animatedicon', 'animatedicon', '66FFFF', 0.8, 'linear');  
objectPlayAnimation('NightmareStage', 'sdfs', true)
      end 
   end 
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if xdd == true and not isSustainNote then  
setProperty('health', getProperty('health')+ 0.010);
  end
end