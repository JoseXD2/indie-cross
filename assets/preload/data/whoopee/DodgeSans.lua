Dodged = false;
canDodge = false;

function onCreate()
  makeAnimatedLuaSprite('DodgeMechs', 'zassets/sans/images/DodgeMechs', 1090, 420);
  luaSpriteAddAnimationByPrefix('DodgeMechs', 'dodge', 'Dodge instance', 24, false);
  luaSpritePlayAnimation('DodgeMechs', 'seviene');
  addLuaSprite('DodgeMechs', true); 
  setProperty('DodgeMechs.visible', false);

  makeAnimatedLuaSprite('DodgeMechs2', 'zassets/sans/images/DodgeMechs2', 900, 320);
  luaSpriteAddAnimationByPrefix('DodgeMechs2', 'huesos', 'Bones boi instance', 22, false);
  luaSpritePlayAnimation('DodgeMechs2', 'huesos');
  addLuaSprite('DodgeMechs2', false); 
  setProperty('DodgeMechs2.visible', false);

  makeAnimatedLuaSprite('DodgeMechs3', 'zassets/sans/images/DodgeMechs3', 800, 360);
  luaSpriteAddAnimationByPrefix('DodgeMechs3', 'seviene', 'Alarm instance', 24, true);
  luaSpritePlayAnimation('DodgeMechs3', 'seviene');
  addLuaSprite('DodgeMechs3', false); 
  setProperty('DodgeMechs3.visible', false);
end

function onEvent(name, value1, value2)
if name == "DodgeSans" then
	canDodge = true;
  luaSpritePlayAnimation('DodgeMechs3', 'seviene');
  setProperty('DodgeMechs3.visible', true);
	runTimer('Died', 0.6);
  playSound('notice', 2)
	end
end

function onUpdate()
if canDodge == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   setProperty('DodgeMechs2.visible', true);
   setProperty('DodgeMechs3.visible', false);
   luaSpritePlayAnimation('DodgeMechs2', 'huesos');
   setProperty('DodgeMechs.visible', true);
   luaSpritePlayAnimation('DodgeMechs', 'dodge');
   setProperty('boyfriend.visible', false);
   playSound('dodgesans', 2)
   objectPlayAnimation('key_space', 'press', true);
   doTweenAlpha('key_space', 'key_space', 0, 5, 'linear') 
   Dodged = true;
   runTimer('bfya', 1);
   canDodge = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   elseif tag == 'Died' and Dodged == true then
   Dodged = false;
   elseif tag == 'bfya' then
    objectPlayAnimation('key_space', 'idle', true);
    setProperty('DodgeMechs.visible', false);
    setProperty('boyfriend.visible', true);
    setProperty('DodgeMechs2.visible', false);
   end
end