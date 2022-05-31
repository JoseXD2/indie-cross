function onCreate()
  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/DrenadoSen')
  addLuaScript('data/whopeee/Ani')
  addLuaScript('data/whopeee/kadebarbendy')
  addLuaScript('data/whopeee/fontbendy') 
  addLuaScript('images/ut/port/flechasbendy')
  addLuaScript('data/whopeee/ratings/ratingsbendy')
  addCharacterToList('1bendy', 'dad') 
  addCharacterToList('2bfbendu', 'bf') 

  makeLuaSprite('postdemise', 'zassets/bendy/images/postdemise', -550, -700);
	scaleObject('postdemise', 1.05, 1);
	addLuaSprite('postdemise', false);

	makeLuaSprite('BG01', 'zassets/bendy/images/first/BG01', -800, -550);
	setLuaSpriteScrollFactor('BG01', 1, 1);
	scaleObject('BG01', 1.3, 1.1);
	addLuaSprite('BG01', false);

	makeAnimatedLuaSprite('MusicBox', 'zassets/bendy/images/first/MusicBox', 880, 70);
  addAnimationByPrefix('MusicBox', 'MusicBox', 'MusicBox', 24, true);  
  objectPlayAnimation('MusicBox', 'MusicBox', true)
  addLuaSprite('MusicBox', false);

    makeAnimatedLuaSprite('fezt', 'zassets/bendy/images/first/fezt', 200, -600);
    addAnimationByPrefix('fezt', 'fezt', 'fezt', 24, true);  
    objectPlayAnimation('fezt', 'fezt', true)
    addLuaSprite('fezt', true);

  makeLuaSprite('Pillar', 'zassets/bendy/images/first/Pillar', 1700, -900);
	setLuaSpriteScrollFactor('Pillar', 1.5, 1.5);
	scaleObject('Pillar', 2, 2);
	addLuaSprite('Pillar', true);
end


function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'fase2' then
removeLuaSprite('Pillar')
removeLuaSprite('fezt')
removeLuaSprite('BG01')
removeLuaSprite('MusicBox')
triggerEvent('Change Character', 'dad', '1bendy');
triggerEvent('Change Character', 'bf', '2bfbendu');
setProperty('cameraSpeed', 0.5)
  end end
end