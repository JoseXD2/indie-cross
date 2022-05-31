function onCreate()

  addLuaScript('data/whopeee/fontsans') 
  addLuaScript('data/whopeee/HealthbarSans')
  addLuaScript('data/whopeee/kadebarSans')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/Boton/BotonDodge')
  addLuaScript('data/whopeee/load/snas')
  addLuaScript('data/whopeee/load/snasded')
  addLuaScript('images/ut/port/flechassans') 
  
	makeLuaSprite('hall', 'zassets/sans/images/hall', -400, -400);
	setLuaSpriteScrollFactor('hall', 1, 1);
	scaleObject('hall', 2, 2);
	addLuaSprite('hall', false);

doTweenAlpha('hudx', 'camHUD', 0, 0.0001, 'linear') 

  setProperty('cameraSpeed', 0.35)

end 

function onEvent(name,value1,value2)
if name == "CamaraZoom" then
 if value1 == '1.15' then
    doTweenColor('hall', 'hall', '402300', 6, 'linear');
    doTweenColor('boyfriend', 'boyfriend', '402300', 6, 'linear');
    doTweenColor('dad', 'dad', '402300', 6, 'linear');
    doTweenColor('gf', 'gf', 'C4682B', 6, 'linear');
    setProperty('cameraSpeed', 1.25)
end
 if value1 == '0.8' then
    doTweenColor('hall', 'hall', 'FFFFFF', 0.5, 'linear');
    doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.5, 'linear');
    doTweenColor('dad', 'dad', 'FFFFFF', 0.5, 'linear');
    doTweenColor('gf', 'gf', 'FFFFFF', 0.5, 'linear');
    setProperty('cameraSpeed', 0.35)
end 
end
if name == "1ChangeScrollSpeed" then     
if value1 == '2.4' then
setProperty('cameraSpeed', 0.35)  
end 
if value1 == '2.5' then
setProperty('cameraSpeed', 0.55)  
end 
if value1 == '2.6' then
setProperty('cameraSpeed', 0.75)  
end 
if value1 == '2.7' then
setProperty('cameraSpeed', 0.95)  
end 
if value1 == '2.8' then
setProperty('cameraSpeed', 1.15)  
end 
if value1 == '2.9' then
setProperty('cameraSpeed', 1.35)  
end 
end 
if name == 'gei' then
if value1 == 'flechassans' then
doTweenAlpha('hud6', 'camHUD', 1, 1, 'linear') 
end  
end 
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
  local animToPlay = '';
  if noteData == 0 and isSustainNote then
    animToPlay = 'singLEFTL';
  elseif noteData == 1 and isSustainNote then
    animToPlay = 'singDOWNL';
  elseif noteData == 2 and isSustainNote then
    animToPlay = 'singUPL';
  elseif noteData == 3 and isSustainNote then
    animToPlay = 'singRIGHTL';
  end
  characterPlayAnim('dad', animToPlay, true);
  setProperty('dad.specialAnim', true);
end