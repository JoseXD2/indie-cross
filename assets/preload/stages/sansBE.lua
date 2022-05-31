function onCreate()

  addLuaScript('data/whopeee/fontsans') 
  addLuaScript('data/whopeee/HealthbarSans')
  addLuaScript('data/whopeee/kadebarSansBE')
  addLuaScript('data/whopeee/camara') 
  addLuaScript('data/whopeee/Boton/BotonDodge') 
  addLuaScript('data/whopeee/load/snas')
  addLuaScript('data/whopeee/load/snasded')
  addLuaScript('data/whopeee/ratings/ratingssans') 
  addLuaScript('images/ut/port/flechassans') 

  addCharacterToList('1sansUT', 'dad') 
  addCharacterToList('2charaUT', 'boyfriend') 

  makeLuaSprite('battle', 'zassets/sans/images/battle', -235, 240);
  setLuaSpriteScrollFactor('battle', 1, 1);
  scaleObject('battle', 0.7, 0.7);
  addLuaSprite('battle', false);

  makeLuaSprite('halldark', 'zassets/sans/images/halldark', -400, -400);
  setLuaSpriteScrollFactor('halldark', 1, 1);
  scaleObject('halldark', 2, 2);
  addLuaSprite('halldark', false);

  makeLuaSprite('flash', 'flash', 0, 0);
  setLuaSpriteScrollFactor('flash', 0, 0);
  setProperty('flash.alpha', 0.0001);
  addLuaSprite('flash', true);

  makeLuaSprite('cot', 'cot', 0, -100);
  setLuaSpriteScrollFactor('cot', 0, 0);
  scaleObject('cot', 0.9, 2.5);
  addLuaSprite('cot', true); 
  setObjectCamera('cot', 'hud');  

  makeLuaSprite('cot2', 'cot', 340, -100);
  setLuaSpriteScrollFactor('cot2', 0, 0);
  scaleObject('cot2', 0.9, 2.5);
  addLuaSprite('cot2', true); 
  setObjectCamera('cot2', 'hud');  

  makeLuaSprite('cot3', 'cot', 680, -100);
  setLuaSpriteScrollFactor('cot3', 0, 0);
  scaleObject('cot3', 0.9, 2.5);
  addLuaSprite('cot3', true); 
  setObjectCamera('cot3', 'hud');  

  makeLuaSprite('cot4', 'cot', 1000, -100);
  setLuaSpriteScrollFactor('cot4', 0, 0);
  scaleObject('cot4', 0.9, 2.5);
  addLuaSprite('cot4', true); 
  setObjectCamera('cot4', 'hud');  

  setProperty('cot.alpha', 0.001);
  setProperty('cot2.alpha', 0.001);
  setProperty('cot3.alpha', 0.001);
  setProperty('cot4.alpha', 0.001);

  makeLuaSprite('chara', 'chara', 0, 0);
  setLuaSpriteScrollFactor('chara', 0, 0);
  setProperty('chara.alpha', 0.0001);
  addLuaSprite('chara', true);

  setObjectCamera('flash', 'hud');  
  doTweenAlpha('hudx', 'camHUD', 0, 0.0001, 'linear') 
  setProperty('cameraSpeed', 1.15)
end 


function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'lento' then
setProperty('cameraSpeed', 0.35)
end
if value1 == 'adios' then
doTweenAlpha('hud', 'camHUD', 0, 3, 'linear')
doTweenAlpha('chara', 'chara', 1, 3, 'linear')
doTweenColor('halldark', 'halldark', '000000', 3, 'linear');
doTweenColor('boyfriend', 'boyfriend', '000000', 3, 'linear');
doTweenColor('dad', 'dad', '000000', 3, 'linear');
doTweenColor('gf', 'gf', 'C4682B', 3, 'linear');
end  
if value1 == 'fase2' then
setProperty("defaultCamZoom",0.6)
setProperty('halldark.visible', false);
triggerEvent('Change Character', 'dad', '1sansUT');
triggerEvent('Change Character', 'bf', '2charaUT');
end
if value1 == 'nor' then
setProperty("defaultCamZoom",0.8)
setProperty('halldark.visible', true);
triggerEvent('Change Character', 'dad', '1sansBE');
triggerEvent('Change Character', 'bf', '2bfsansBE');
end 
end 
if name == 'gei' then
if value1 == 'flechassans' then
doTweenAlpha('hud6', 'camHUD', 1, 4, 'linear') 
end  
end
if name == "Flan" then
    setProperty('flash.alpha', 1);
    playSound('notice', 1);
    doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1, 'linear');
    setObjectCamera('flash', 'hud');
end 
if name == "boxOpen" then
doTweenAlpha('boyfrien', 'boyfriend', 0.5, 0.3, 'linear');
end 
if name == "boxClose" then
doTweenAlpha('boielfrien', 'boyfriend', 1, 0.3, 'linear');
end 
end