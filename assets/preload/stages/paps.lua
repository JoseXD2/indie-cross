function onCreate()
  
  addLuaScript('data/whopeee/kadebarbros')
  addLuaScript('images/ut/port/flechaspaps')
  
	makeLuaSprite('Papyrus_BG', 'zassets/bonusSongs/Papyrus_BG', -400, -400);
	setLuaSpriteScrollFactor('Papyrus_BG', 1, 1);
	scaleObject('Papyrus_BG', 1.2, 1.3);
	addLuaSprite('Papyrus_BG', false);

  setProperty('cameraSpeed', 0.6)

  makeAnimatedLuaSprite('Sans_Brrrr', 'zassets/Ani/Sans_Brrrr', -50, 250);
  luaSpriteAddAnimationByPrefix('Sans_Brrrr', 'zorra', '03 instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Sans_Brrrr', 'Dodges', '03 instance ', 24, false);
  luaSpritePlayAnimation('Sans_Brrrr', 'zorra');
  addLuaSprite('Sans_Brrrr', true); 
  setProperty('Sans_Brrrr.visible', false);

end 

function onEvent(name, value1, value2)
if name == '3rdstrum' then
noteTweenX("a", 0, 440-15, 2, "linear")
noteTweenX("xxx", 1, 540-15, 2, "linear")
noteTweenX("e2", 2, 645-16, 2, "linear")
noteTweenX("v", 3, 740-15, 2, "linear")
noteTweenX("sf", 4, 850, 2, "linear")
noteTweenX("fsd", 5, 952, 2, "linear")
noteTweenX("hd", 6, 1055, 2, "linear")
noteTweenX("aw", 7, 1155, 2, "linear")
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'scale.y', 0.62)
setPropertyFromGroup('playerStrums', i, 'scale.x', 0.62)
end
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'scale.y', 0.62)
setPropertyFromGroup('opponentStrums', i, 'scale.x', 0.62)
end 
end
if name == 'Asbel' then
if value1 == 'shit' then
   setProperty('Sans_Brrrr.visible', true);
   setProperty('dad.visible', false);
    luaSpritePlayAnimation('SansDodge', 'Dodges'); 
    runTimer('dos', 1.9);
    runTimer('doss', 1.9);   
      end 
   end 
end 

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'dos' then
   setProperty('Sans_Brrrr.visible', false);
   setProperty('dad.visible', true);
  end
end  
