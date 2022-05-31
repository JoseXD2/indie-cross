function onCreate()
  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/DrenadoSen') 
  addLuaScript('data/whopeee/kadebarbendy')
  addLuaScript('data/whopeee/fontbendy') 
  addLuaScript('data/whopeee/camara') 
  addLuaScript('images/ut/port/flechasbendy')

  makeLuaSprite('dabg', 'zassets/bonusSongs/dabg', -500, -400);
  setLuaSpriteScrollFactor('dabg', 1, 1);
  scaleObject('dabg', 2, 2);
  setProperty('cameraSpeed', 0.35)
  addLuaSprite('dabg', false);

  makeLuaSprite('Curtain1', 'zassets/bonusSongs/Curtain1', -400, -500);
  setLuaSpriteScrollFactor('Curtain1', 1, 1);
  scaleObject('Curtain1', 2, 2);
  addLuaSprite('Curtain1', false);

  makeLuaSprite('Curtain2', 'zassets/bonusSongs/Curtain2', 1000, -500);
  setLuaSpriteScrollFactor('Curtain2', 1, 1);
  scaleObject('Curtain2', 2, 2);
  addLuaSprite('Curtain2', false);
end

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'mewhentweenx' then
doTweenX('Curtain2', 'Curtain2', 1400, 1, 'quadInOut'); 
doTweenX('Curtain1', 'Curtain1', -800, 1, 'quadInOut'); 
setProperty('cameraSpeed', 0.6)
  end end
end
