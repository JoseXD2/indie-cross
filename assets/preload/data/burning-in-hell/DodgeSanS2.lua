Dodged = false;
canDodge = false;

function onCreate()
  makeAnimatedLuaSprite('Cardodge', 'zassets/sans/images/Cardodge', 1100, 510);
  luaSpriteAddAnimationByPrefix('Cardodge', 'dodge', 'Dodge instance', 24, true);
  luaSpritePlayAnimation('Cardodge', 'seviene');
  addLuaSprite('Cardodge', true); 
  setProperty('Cardodge.visible', false);

  makeAnimatedLuaSprite('Cardodge2', 'zassets/sans/images/Cardodge2', 900, 360);
  luaSpriteAddAnimationByPrefix('Cardodge2', 'huesos', 'Bones boi instance', 24, false);
  luaSpritePlayAnimation('Cardodge2', 'huesos');
  addLuaSprite('Cardodge2', false); 
  setProperty('Cardodge2.visible', false);

  makeAnimatedLuaSprite('Cardodge3', 'zassets/sans/images/Cardodge3', 800, 360);
  luaSpriteAddAnimationByPrefix('Cardodge3', 'seviene', 'Alarm instance', 24, true);
  luaSpritePlayAnimation('Cardodge3', 'seviene');
  addLuaSprite('Cardodge3', true); 
  setProperty('Cardodge3.visible', false);

  
    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);
end

function onEvent(name, value1, value2)
if name == "DodgeSans" then
doTweenZoom('XDD','camGame', 0.7, 0.5,'sineInOut')
canDodge = true;
luaSpritePlayAnimation('Cardodge3', 'seviene');
setProperty('Cardodge3.visible', true);
runTimer('Died', 0.6);
runTimer('Follow', 2);
playSound('notice', 2)
	end
end

function onUpdate()
if canDodge == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   triggerEvent('Screen Shake', '0.2, 0.015', '0.2, 0.005');
   setProperty('Cardodge2.visible', true);
   setProperty('Cardodge3.visible', false);
   luaSpritePlayAnimation('Cardodge2', 'huesos');
   setProperty('Cardodge.visible', true);
   luaSpritePlayAnimation('Cardodge', 'dodge');
   setProperty('boyfriend.visible', false);
   playSound('dodgesans', 2)
   Dodged = true;
   runTimer('bfya', 1);
   canDodge = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   playSound('dodgesans', 2)
   setProperty('Cardodge2.visible', true);
   setProperty('Cardodge3.visible', false);
   luaSpritePlayAnimation('Cardodge2', 'huesos'); 
   setProperty('health', getProperty('health') -1.5);
   runTimer('bfya', 1); 
   Dodged = false;
   elseif tag == 'Died' and Dodged == true then
   Dodged = false;
   elseif tag == 'bfya' then
    setProperty('Cardodge.visible', false);
    setProperty('boyfriend.visible', true);
    setProperty('Cardodge2.visible', false);
    Dodged = false;
   end 
   if tag == 'Follow' then 
   triggerEvent('Camera Follow Pos', '', ''); 
   end
end