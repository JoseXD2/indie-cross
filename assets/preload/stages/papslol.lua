function onCreate()
  
  addLuaScript('data/whopeee/kadebarpaps')
  addLuaScript('data/whopeee/camara')
  addLuaScript('images/ut/port/flechaspaps')
  
	makeLuaSprite('Papyrus_BG', 'zassets/bonusSongs/Papyrus_BG', -400, -400);
	setLuaSpriteScrollFactor('Papyrus_BG', 1, 1);
	scaleObject('Papyrus_BG', 1.2, 1.3);
	addLuaSprite('Papyrus_BG', false);

  setProperty('cameraSpeed', 0.4)

  makeAnimatedLuaSprite('Sans_Brrrr', 'zassets/Ani/Sans_Brrrr', -50, 250);
  luaSpriteAddAnimationByPrefix('Sans_Brrrr', 'zorra', '03 instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Sans_Brrrr', 'Dodges', '03 instance ', 24, false);
  luaSpritePlayAnimation('Sans_Brrrr', 'zorra');
  addLuaSprite('Sans_Brrrr', true); 
  setProperty('Sans_Brrrr.visible', false);

end 

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'uwu' then
playSound('Spear', 2)  
      end 
   end 
end 
