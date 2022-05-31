local tilin = false
local width = 0

function onCreate()
  width = getProperty("C_01.width") 

  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/DrenadoSen') 
  addLuaScript('data/whopeee/kadebarbendy')
  addLuaScript('data/whopeee/fontbendy') 
  addCharacterToList('1bendyrundark', 'dad') 
  addCharacterToList('2bfrundark', 'bf') 
  addLuaScript('data/whopeee/ratings/ratingsbendy')

  setProperty('cameraSpeed', 1.2)

  makeLuaSprite('C_00', 'zassets/bendy/images/gay/C_00', -1300, -1300);
  setLuaSpriteScrollFactor('C_00', 1, 1);
  scaleObject('C_00', 5.2, 4.8);
  addLuaSprite('C_00', false);
  setProperty('C_00.visible', false);
 
  makeLuaSprite('C_02', 'zassets/bendy/images/gay/C_02', -400, -1300);
  setLuaSpriteScrollFactor('C_02', 1, 1);
  scaleObject('C_02', 5.2, 4.8);
  addLuaSprite('C_02', false);
  setProperty('C_02.visible', false);

  makeLuaSprite('C_01', 'zassets/bendy/images/gay/C_01', -1300, -1300);
  setLuaSpriteScrollFactor('C_01', 1, 1);
  scaleObject('C_01', 16.2, 4.8);
  addLuaSprite('C_01', true);
  setProperty('C_01.visible', false);

  makeLuaSprite('C_05', 'zassets/bendy/images/gay/C_05', -1300, -1300);
  setLuaSpriteScrollFactor('C_05', 1, 1);
  scaleObject('C_05', 5.2, 4.8);
  addLuaSprite('C_05', true);
  setProperty('C_05.visible', false);

  makeAnimatedLuaSprite('Fuck_the_hallway_but_Dark', 'zassets/bendy/images/run/Fuck_the_hallwayd', -14100, -400); 
  addAnimationByPrefix('Fuck_the_hallway_but_Dark', 'Fuck_the_hallway_but_Dark', 'Tunnel instance', 80, true);  
  objectPlayAnimation('Fuck_the_hallway_but_Dark', 'Fuck_the_hallway_but_Dark', true)
  scaleObject('Fuck_the_hallway_but_Dark', 2.6, 2.3);
  addLuaSprite('Fuck_the_hallway_but_Dark', false);
  setProperty('Fuck_the_hallway_but_Dark.visible', true);

  makeAnimatedLuaSprite('Fuck_the_hallway', 'zassets/bendy/images/run/Fuck_the_hallway', -14100, -400); 
  addAnimationByPrefix('Fuck_the_hallway', 'Fuck_the_hallway', 'Fuck_the_hallway', 80, true);  
  objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
  scaleObject('Fuck_the_hallway', 2.6, 2.3);
  addLuaSprite('Fuck_the_hallway', false);
  setProperty('Fuck_the_hallway.visible', true);
end


function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'escaleras' then
tilin = true
doTweenAngle("dad1", "dad", -20 , 1, "quadInOut")
doTweenAngle("boyfriend1", "boyfriend", -20 , 1, "quadInOut")
setProperty("defaultCamZoom", 0.4) 
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', false);
setProperty('chainright.visible', true);
setProperty('stairs.visible', true);
setProperty('chainleft.visible', true);
setProperty('scrollingBG.visible', true);
end
if value1 == 'parti' then
setProperty("defaultCamZoom", 0.3) 
removeLuaSprite('jejejboy')
triggerEvent('Camera Follow Pos', '1200', '200');
removeLuaSprite('bg1')
removeLuaSprite('bg2')
removeLuaSprite('bg3')
removeLuaSprite('bg4') 
removeLuaSprite('bg5')
removeLuaSprite('bg6')
removeLuaSprite('bg7')
removeLuaSprite('bg8')
setProperty('C_00.visible', true);
setProperty('C_01.visible', true);
setProperty('C_02.visible', true);
setProperty('C_05.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrundark');
triggerEvent('Change Character', 'bf', '2bfrundark');
setProperty("defaultCamZoom", 0.4) 
doTweenX('C_02tuinex', 'C_02', -2000, 23, 'quadInOut');
setProperty('Fuck_the_hallway_but_Dark.visible', false);
doTweenX("C_01Tweene", "C_01", -11500 , 23, "quadInOut")
end 
if value1 == 'nor' then
tilin = false
setProperty('Fuck_the_hallway_but_Dark.visible', false);
objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
setProperty("defaultCamZoom", 0.7) 
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrun');
triggerEvent('Change Character', 'bf', '2bfrun');
end
if value1 == 'nor2' then
tilin = false
objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
setProperty("defaultCamZoom", 0.7) 
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway_but_Dark.visible', false);
setProperty('Fuck_the_hallway.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrun2');
triggerEvent('Change Character', 'bf', '2bfrun2');
removeLuaSprite('C_00')
removeLuaSprite('C_01')
removeLuaSprite('C_02')
removeLuaSprite('C_05')
end
if value1 == 'dark' then
setProperty("defaultCamZoom", 0.55) 
tilin = false
objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrundark');
triggerEvent('Change Character', 'bf', '2bfrundark');
end
if value1 == 'dark2' then
setProperty("defaultCamZoom", 0.55) 
objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
tilin = false
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrundark');
triggerEvent('Change Character', 'bf', '2bfrundark');
removeLuaSprite('C_00')
removeLuaSprite('C_01')
removeLuaSprite('C_02')
removeLuaSprite('C_05')
end
if value1 == '4' then
removeLuaSprite('Trans')
end
end
end

function onUpdate()
if getProperty("C_01.x") == -3000 then
setProperty("C_01.x", -1300)
doTweenX("C_01Tweene", "C_01", -4500 , 4, "quadInOut")
end
end
