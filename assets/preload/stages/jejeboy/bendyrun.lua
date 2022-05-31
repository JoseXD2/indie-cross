local tilin = false

function onCreate()
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
  scaleObject('C_00', 2.6, 2.4);
  addLuaSprite('C_00', false);
  setProperty('C_00.visible', false);
 
  makeLuaSprite('C_02', 'zassets/bendy/images/gay/C_02', -400, -1300);
  setLuaSpriteScrollFactor('C_02', 1, 1);
  scaleObject('C_02', 2.6, 2.4);
  addLuaSprite('C_02', false);
  setProperty('C_02.visible', false);

  makeLuaSprite('C_01', 'zassets/bendy/images/gay/C_01', -1300, -1300);
  setLuaSpriteScrollFactor('C_01', 1, 1);
  scaleObject('C_01', 4.6, 2.4);
  addLuaSprite('C_01', true);
  setProperty('C_01.visible', false);
  
  makeLuaSprite('C_05', 'zassets/bendy/images/gay/C_05', -1300, -1300);
  setLuaSpriteScrollFactor('C_05', 1, 1);
  scaleObject('C_05', 2.6, 2.4);
  addLuaSprite('C_05', true);
  setProperty('C_05.visible', false);

  makeLuaSprite('scrollingBG', 'zassets/bendy/images/stairs/scrollingBG', -1300, -1400);
  setLuaSpriteScrollFactor('scrollingBG', 1, 1);
  scaleObject('scrollingBG', 2.6, 2.4);
  addLuaSprite('scrollingBG', false);
  setProperty('scrollingBG.visible', false);

  makeLuaSprite('stairs', 'zassets/bendy/images/stairs/stairs', -940, -900);
  setLuaSpriteScrollFactor('stairs', 1, 1);
  scaleObject('stairs', 2.8, 2.4);
  addLuaSprite('stairs', true);
  setProperty('stairs.visible', false);
   
  makeLuaSprite('chainleft', 'zassets/bendy/images/stairs/chainleft', -100, -1400);
  setLuaSpriteScrollFactor('chainleft', 1, 1);
  scaleObject('chainleft', 2.6, 2.4);
  addLuaSprite('chainleft', true);
  setProperty('chainleft.visible', false);

    makeLuaSprite('chainright', 'zassets/bendy/images/stairs/chainright', 2300, -1400);
  setLuaSpriteScrollFactor('chainright', 1, 1);
  scaleObject('chainright', 2.6, 2.4);
  addLuaSprite('chainright', true);
  setProperty('chainright.visible', false);

    makeLuaSprite('jejejboy', 'zassets/bendy/images/jejejboy', 1500, -450);
    setLuaSpriteScrollFactor('jejejboy', 1.5, 1.5);
    scaleObject('jejejboy', 1, 1);
    addLuaSprite('jejejboy', true);   

  makeAnimatedLuaSprite('Fuck_the_hallway_but_Dark', 'zassets/bendy/images/dark/Fuck_the_hallway_but_Dark', -500, -500);
  addAnimationByPrefix('Fuck_the_hallway_but_Dark', 'Fuck_the_hallway_but_Dark', 'RunLol Hallway instance 1', 60, true);  
  objectPlayAnimation('Fuck_the_hallway_but_Dark', 'Fuck_the_hallway_but_Dark', true)
  scaleObject('Fuck_the_hallway_but_Dark', 2.6, 2.3);
  addLuaSprite('Fuck_the_hallway_but_Dark', false);
  setProperty('Fuck_the_hallway_but_Dark.visible', true);

  makeAnimatedLuaSprite('Fuck_the_hallway', 'zassets/bendy/images/run/Fuck_the_hallway', -14100, -400);
  addAnimationByPrefix('Fuck_the_hallway', 'Fuck_the_hallway', 'Fuck_the_hallway', 60, true);  
  objectPlayAnimation('Fuck_the_hallway', 'Fuck_the_hallway', true)
  scaleObject('Fuck_the_hallway', 2.6, 2.3);
  addLuaSprite('Fuck_the_hallway', false);
  setProperty('Fuck_the_hallway.visible', true);

end


function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'escaleras' then
tilin = true
setProperty("defaultCamZoom", 0.4) 
triggerEvent('Camera Follow Pos', '1200', '400');
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', false);
setProperty('chainright.visible', true);
setProperty('stairs.visible', true);
setProperty('chainleft.visible', true);
setProperty('scrollingBG.visible', true);
end
if value1 == 'parti' then
removeLuaSprite('jejejboy')
triggerEvent('Camera Follow Pos', '1200', '200');
removeLuaSprite('chainright')
removeLuaSprite('stairs')
removeLuaSprite('scrollingBG')
removeLuaSprite('chainleft') 
setProperty('C_00.visible', true);
setProperty('C_01.visible', true);
setProperty('C_02.visible', true);
setProperty('C_05.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrundark');
triggerEvent('Change Character', 'bf', '2bfrundark');
setProperty("defaultCamZoom", 0.4) 
setProperty('Fuck_the_hallway_but_Dark.visible', false);
doTweenX('C_02tuinex', 'C_02', -2000, 23, 'quadInOut');
doTweenX('C_01tuinex', 'C_01', -4500, 23, 'quadInOut');
end 
if value1 == 'nor' then
tilin = false
setProperty("defaultCamZoom", 0.7) 
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway_but_Dark.visible', false);
setProperty('Fuck_the_hallway.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrun');
triggerEvent('Change Character', 'bf', '2bfrun');
end
if value1 == 'nor2' then
tilin = false
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
setProperty("defaultCamZoom", 0.7) 
tilin = false
triggerEvent('Camera Follow Pos', '', '');
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', true);
triggerEvent('Change Character', 'dad', '1bendyrundark');
triggerEvent('Change Character', 'bf', '2bfrundark');
end
if value1 == 'dark2' then
setProperty("defaultCamZoom", 0.7) 
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

function onTweenCompleted(tag)
if tag == 'jejejboyTUIN' and tilin == true then
doTweenAlpha('jejejboyTUINparte2', 'jejejboy', 1, 5, 'quadInOut');
doTweenY('stairstuinxd', 'stairs', 1500, 5, 'quadInOut'); 
doTweenY('dddd', 'dad', 2800, 5, 'quadInOut'); 
doTweenY('bbbb', 'boyfriend', 2600, 5, 'quadInOut'); 
doTweenY('porfavor', 'scrollingBG', -5360, 5, 'quadInOut'); 
doTweenY('porfavor2', 'chainleft', -5360, 5, 'quadInOut'); 
doTweenY('porfavor3', 'chainright', -5360, 5, 'quadInOut'); 
    end
end

function onUpdate()
if getProperty('jejejboy.alpha') == 1 and tilin == true then
doTweenAlpha('jejejboyTUIN', 'jejejboy', 0, 0.0000000000000000000000001, 'quadInOut');
doTweenY('st2a2ir2st2uinxd2', 'stairs', -3500, 0.000001, 'quadInOut');
doTweenY('dadtuinn', 'dad', -3000, 0.000001, 'quadInOut'); 
doTweenY('boyfriendtuiin', 'boyfriend', -3000, 0.000001, 'quadInOut');
doTweenY('ayuda', 'scrollingBG', -1800, 0.000001, 'quadInOut');
doTweenY('ayuda2', 'chainleft', -1800, 0.000001, 'quadInOut');
doTweenY('ayuda3', 'chainright', -1800, 0.000001, 'quadInOut');
    end
end