local cpuvlo = false

function onCreate()
  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/shake') 
  addLuaScript('data/whopeee/fontbendy') 
addLuaScript('data/whopeee/kadebarbendyN')
addLuaScript('images/ut/port/flechasbendyn')
setProperty('debugKeysChart', null);

  makeLuaSprite('inkydepths2', 'zassets/bendy/images/inky depths2', -1250, -550);
  scaleObject('inkydepths2', 1.7, 1.5);
  addLuaSprite('inkydepths2', false);

  makeLuaSprite('inkydepths', 'zassets/bendy/images/inky depths', -1250, -550);
  scaleObject('inkydepths', 1.7, 1.5);
  addLuaSprite('inkydepths', false);

    makeAnimatedLuaSprite('Fyre', 'zassets/bendy/images/Fyre', -900, 700);
    addAnimationByPrefix('Fyre', 'Fyre', 'Fyre', 24, true);
    scaleObject('Fyre', 2.3, 2);  
    objectPlayAnimation('Fyre', 'Fyre', true)
    addLuaSprite('Fyre', false);

	makeLuaSprite('nightmareBendy_foreground', 'zassets/bendy/images/nightmareBendy_foreground', -1300, -100);
	setLuaSpriteScrollFactor('nightmareBendy_foreground', 1, 1);
	scaleObject('nightmareBendy_foreground', 2, 2);
	addLuaSprite('nightmareBendy_foreground', false);
  doTweenAlpha('nada', 'inkydepths', 0.000000000001, 0.0000000001, 'linear');
  doTweenAlpha('nada2', 'inkydepths2', 0, 0.0000000001, 'linear');

 makeAnimatedLuaSprite('Piper', 'zassets/Ani/PiperDespair', 2300, 550);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque1', 'PipAttack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Ataque2', 'PeepAttack instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Walk', 'pip walk instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Piper', 'Golpeado', 'Piper gets Hit instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Die', 'Piper ded instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Piper', 'Idle', 'Piperr instance ', 24, true);
  luaSpritePlayAnimation('Piper', 'Idle');
  addLuaSprite('Piper', true); 
  scaleObject('Piper', 1.7, 1.7);

  makeAnimatedLuaSprite('Striker', 'zassets/Ani/StrikerDespair', -1600, 560);
  luaSpriteAddAnimationByPrefix('Striker', 'Ataque1', 'PunchAttack_container instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Ataque2', 'regeg instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Walk', 'Str walk instance ', 24, true);
  luaSpriteAddAnimationByPrefix('Striker', 'Golpeado', 'Sticker  instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Striker', 'DieSS', 'I ded instance ', 24, false);
  luaSpriteAddAnimationByPrefix('Striker', 'Idle', 'strrr instance ', 24, true);
  luaSpritePlayAnimation('Striker', 'Idle');
  scaleObject('Striker', 1.7, 1.7);
  addLuaSprite('Striker', true); 

    makeAnimatedLuaSprite('BoyFriendDodge', 'zassets/Ani/NMDodge', 1010, 600);
  luaSpriteAddAnimationByPrefix('BoyFriendDodge', 'dodge', 'Dodge instance ', 24, true);
  scaleObject('BoyFriendDodge', 1.7, 1.7);  
  luaSpritePlayAnimation('BoyFriendDodge', 'dodge');
  addLuaSprite('BoyFriendDodge', false); 
  setProperty('BoyFriendDodge.visible', false);

  makeAnimatedLuaSprite('BoyFriendAtt', 'zassets/Ani/NMAtack', 1010, 470);
   scaleObject('BoyFriendAtt', 1.7, 1.7);  
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'AttackAltzzz', 'Attack instanceAlt', 24, true);
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'Attack', 'AtaqueI', 24, false);
  luaSpriteAddAnimationByPrefix('BoyFriendAtt', 'AttackAlt', 'AtaqueD', 24, false);
  luaSpritePlayAnimation('BoyFriendAtt', 'AttackAltzzz');
  addLuaSprite('BoyFriendAtt', false); 
  setProperty('BoyFriendAtt.visible', false);
end


function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'nada' then
cpuvlo = false
doTweenAlpha('nadae', 'inkydepths', 0.000000000001, 1, 'linear');
doTweenAlpha('nadae2', 'inkydepths2', 0, 1, 'linear');
end  
if value1 == 'fase2' then
cpuvlo = true
doTweenAlpha('inkydepths2', 'inkydepths2', 1, 0.6, 'linear');
doTweenAlpha('inkydepthsTUIN', 'inkydepths', 0, 3, 'quadInOut');  
end 
if value1 == 'fase3' then
doTweenAlpha('inkydepths', 'inkydepths', 1, 2, 'linear');
end 
if value1 == 'fuego' then
doTweenY('arriba', 'Fyre', 0, 5, 'quadInOut'); 
end 
if value1 == 'pito' then
removeLuaSprite('Piper')
removeLuaSprite('Striker')
      end 
   end
end

function onTweenCompleted(tag)
if tag == 'inkydepthsTUIN' and cpuvlo == true then
doTweenAlpha('inkydepthsTUINparte2', 'inkydepths', 1, 3, 'quadInOut');
    end
end

function onUpdate()
if getProperty('inkydepths.alpha') == 1 and cpuvlo == true then
doTweenAlpha('inkydepthsTUIN', 'inkydepths', 0, 3, 'quadInOut');  
    end
end

function onUpdatePost(elapsed)
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
loadSong('jsb', 'jsb', true);
   end
end