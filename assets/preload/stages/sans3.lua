function onCreate()

  addLuaScript('data/whopeee/fontsans') 
  addLuaScript('data/whopeee/HealthbarSans')
  addLuaScript('data/whopeee/kadebarSans')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/load/snas')
  addLuaScript('images/ut/port/flechassans') 

  addCharacterToList('1sansWF', 'dad') 
  addCharacterToList('2bfsansWF', 'boyfriend') 
  doTweenAlpha('hudx', 'camHUD', 0, 0.0001, 'linear') 

  makeLuaSprite('guait', 'zassets/sans/images/guait', -400, -400);
  setLuaSpriteScrollFactor('guait', 1, 1);
  scaleObject('guait', 8, 8);
  addLuaSprite('guait', false);

  makeLuaSprite('Waterfall', 'zassets/sans/images/Waterfall', -550, -400);
  setLuaSpriteScrollFactor('Waterfall', 1, 1);
  scaleObject('Waterfall', 1.5, 1.5);
  addLuaSprite('Waterfall', false);

  makeLuaSprite('hall', 'zassets/sans/images/hall', -400, -400);
  setLuaSpriteScrollFactor('hall', 1, 1);
  scaleObject('hall', 2, 2);
  addLuaSprite('hall', false);

  setProperty('cameraSpeed', 0.95)
end 

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'waterfall' then
setProperty('hall.visible', false);
triggerEvent('Change Character', 'dad', '1sansWF');
triggerEvent('Change Character', 'bf', '2bfsansWF');
end
if value1 == 'normal' then
setProperty('hall.visible', true);
removeLuaSprite('Waterfall')
triggerEvent('Change Character', 'dad', '1sans');
triggerEvent('Change Character', 'bf', '2bfsans'); 
end 
 if value1 == 'bn' then
    doTweenAlpha('adiouuuu', 'hall', 0, 2, 'linear');
    doTweenColor('boyfriend', 'boyfriend', '000000', 2, 'linear');
    doTweenColor('dad', 'dad', '000000', 2, 'linear');
    doTweenColor('boyfriend', 'boyfriend', '000000', 2, 'linear');
end
if value1 == 'normal2' then
    doTweenAlpha('zzzzzzz', 'hall', 1, 1, 'linear');
    doTweenColor('hall', 'hall', 'FFFFFF', 1, 'linear');
    doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 1, 'linear');
    doTweenColor('dad', 'dad', 'FFFFFF', 1, 'linear');
  end
end     
if name == 'gei' then
if value1 == 'flechassans' then
doTweenAlpha('hud6', 'camHUD', 1, 3, 'linear') 
end 
end
if name == "Cinema" then
 if value1 == 'on' then 
    noteTweenY("a", 0, 115, 2, "linear")
    noteTweenY("e", 1, 115, 2, "linear")
    noteTweenY("e2", 2, 115, 2, "linear")
    noteTweenY("v", 3, 115, 2, "linear")
    noteTweenY("sf", 4, 115, 2, "linear")
    noteTweenY("fsd", 5, 115, 2, "linear")
    noteTweenY("hd", 6, 115, 2, "linear")
    noteTweenY("aw", 7, 115, 2, "linear")
    if downscroll then
    noteTweenY("a", 0, 505, 2, "linear")
    noteTweenY("e", 1, 505, 2, "linear")
    noteTweenY("e2", 2, 505, 2, "linear")
    noteTweenY("v", 3, 505, 2, "linear")
    noteTweenY("sf", 4, 505, 2, "linear")
    noteTweenY("fsd", 5, 505, 2, "linear")
    noteTweenY("hd", 6, 505, 2, "linear")
    noteTweenY("aw", 7, 505, 2, "linear")
end
end
if value1 == '' then     
    noteTweenY("asa", 0, 50, 1, "linear")
    noteTweenY("bve", 1, 50, 1, "linear")
    noteTweenY("ebv2", 2, 50, 1, "linear")
    noteTweenY("vvb", 3, 50, 1, "linear")
    noteTweenY("svbbbf", 4, 50, 1, "linear")
    noteTweenY("fbSZsd", 5, 50, 1, "linear")
    noteTweenY("hadsd", 6, 50, 1, "linear")
    noteTweenY("awads", 7, 50, 1, "linear")
if downscroll then
    noteTweenY("asa", 0, 565, 1, "linear")
    noteTweenY("bve", 1, 565, 1, "linear")
    noteTweenY("ebv2", 2, 565, 1, "linear")
    noteTweenY("vvb", 3, 565, 1, "linear")
    noteTweenY("svbbbf", 4, 565, 1, "linear")
    noteTweenY("fbSZsd", 5, 565, 1, "linear")
    noteTweenY("hadsd", 6, 565, 1, "linear")
    noteTweenY("awads", 7, 565, 1, "linear")
end  
end
end
end