Esquivado = false;
PuedeEsquivar = false;
local xdd = true

function onCreate()

  addLuaScript('data/whopeee/fonheadt') 
  addLuaScript('data/whopeee/HealtbarcupheadN')
  addLuaScript('data/whopeee/kadebarcupheadN')
  addLuaScript('data/whopeee/shake')
  addLuaScript('images/ut/port/flechascupheadn')
   addLuaScript('data/whopeee/ratings/ratingsheadn') 
  addLuaScript('data/whopeee/camara')
  setProperty('debugKeysChart', null);
  
  setProperty('cameraSpeed', 1.5)

	makeLuaSprite('nightmarecupbg', 'zassets/cup/images/nightmarecupbg', -400, -400);
	setLuaSpriteScrollFactor('nightmarecupbg', 1, 1);
	scaleObject('nightmarecupbg', 2.5, 2.5);
	addLuaSprite('nightmarecupbg', false);

  makeAnimatedLuaSprite('NMClight', 'zassets/cup/images/NMClight', 800, 800);
  addAnimationByPrefix('NMClight', 'NMClight', 'NMClight', 24, true);  
  scaleObject('NMClight', 4, 4);
  objectPlayAnimation('NMClight', 'NMClight', true)
  addLuaSprite('NMClight', false);

    makeLuaSprite('jejejboy', 'zassets/bendy/images/jejejboy', 1500, -450);
    setLuaSpriteScrollFactor('jejejboy', 1.5, 1.5);
    scaleObject('jejejboy', 1, 1);
    addLuaSprite('jejejboy', true);

      makeAnimatedLuaSprite('Grainshit', 'zassets/cup/images/Grainshit', 0, 0);
    addAnimationByPrefix('Grainshit', 'Grainshit', 'Geain instance 1', 24, true);  
    objectPlayAnimation('Grainshit', 'Grainshit', true)
    setObjectCamera('Grainshit', 'other');
    addLuaSprite('Grainshit', true);

  makeAnimatedLuaSprite('CUpheqdshid', 'zassets/cup/images/CUpheqdshid', 0, 0);
    addAnimationByPrefix('CUpheqdshid', 'CUpheqdshid', 'CUpheqdshid', 24, true);  
    objectPlayAnimation('CUpheqdshid', 'CUpheqdshid', true)
    setObjectCamera('CUpheqdshid', 'other');
    addLuaSprite('CUpheqdshid', true);
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if xdd == true and not isSustainNote then  
setProperty('health', getProperty('health')+ 0.031);
  end
end

function onUpdate(elapsed)
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
loadSong('jsc', 'jsc', true);
   end
end