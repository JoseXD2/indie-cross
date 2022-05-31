function onCreate()

  addLuaScript('data/whopeee/fontsans') 
  addLuaScript('data/whopeee/HealthbarSans')
  addLuaScript('data/whopeee/kadebarSans')
  addLuaScript('images/ut/port/flechassans') 
  addLuaScript('data/whopeee/load/snas')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/Boton/Boton5s')
  
  addCharacterToList('1sansUT', 'dad') 
  addCharacterToList('2bfUT', 'boyfriend') 

  makeLuaSprite('battle', 'zassets/sans/images/battle', -235, 240);
  setLuaSpriteScrollFactor('battle', 1, 1);
  scaleObject('battle', 0.7, 0.7);
  addLuaSprite('battle', false);

  makeLuaSprite('hall', 'zassets/sans/images/hall', -400, -400);
  setLuaSpriteScrollFactor('hall', 1, 1);
  scaleObject('hall', 2, 2);
  addLuaSprite('hall', false);

  doTweenAlpha('hudx', 'camHUD', 0, 0.0001, 'linear') 
  setProperty('cameraSpeed', 0.85)
end 

function onEvent(name,value1,value2)
if name == 'gei' then
if value1 == 'flechassans' then
doTweenAlpha('hud6', 'camHUD', 1, 1, 'linear') 
end  
end
end