Dodged = false;
canDodge = false;
AZDodged = false;
AZcanDodge = false;
local azul = false

local Ataque = {'1', '2',}
local Lel = nil

function onCreate()

    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);

  makeAnimatedLuaSprite('DodgeMechsBS-Shader', 'zassets/Ani/BFNMSdodge', 1090, 470);
  luaSpriteAddAnimationByPrefix('DodgeMechsBS-Shader', 'dodge', 'boyfriend dodge', 24, true);
  luaSpritePlayAnimation('DodgeMechsBS-Shader', 'seviene');
  addLuaSprite('DodgeMechsBS-Shader', true); 
  setProperty('DodgeMechsBS-Shader.visible', false);

  makeAnimatedLuaSprite('AzulAlarma', 'zassets/sans/images/ND/AzulAlarma', 800, 360);
  luaSpriteAddAnimationByPrefix('AzulAlarma', 'AzulAlarma', 'AzulAlarma', 24, true);
  luaSpritePlayAnimation('AzulAlarma', 'AzulAlarma');
  addLuaSprite('AzulAlarma', true); 
  setProperty('AzulAlarma.visible', false);

  makeAnimatedLuaSprite('AzulHuesos', 'zassets/sans/images/ND/AzulHuesos', 800, 360);
  luaSpriteAddAnimationByPrefix('AzulHuesos', 'AzulHuesos', 'AzulHuesos', 24, true);
  luaSpritePlayAnimation('AzulHuesos', 'AzulHuesos');
  addLuaSprite('AzulHuesos', true); 
  setProperty('AzulHuesos.visible', false);

  makeAnimatedLuaSprite('NaranjaHuesos', 'zassets/sans/images/ND/NaranjaHuesos', 800, 360);
  luaSpriteAddAnimationByPrefix('NaranjaHuesos', 'NaranjaHuesos', 'NaranjaHuesos', 24, false);
  luaSpritePlayAnimation('NaranjaHuesos', 'NaranjaHuesos');
  addLuaSprite('NaranjaHuesos', false); 
  setProperty('NaranjaHuesos.visible', false);

  makeAnimatedLuaSprite('NaranjaAlarma', 'zassets/sans/images/ND/NaranjaAlarma', 800, 360);
  luaSpriteAddAnimationByPrefix('NaranjaAlarma', 'NaranjaAlarma', 'NaranjaAlarma', 24, true);
  luaSpritePlayAnimation('NaranjaAlarma', 'NaranjaAlarma');
  addLuaSprite('NaranjaAlarma', true); 
  setProperty('NaranjaAlarma.visible', false);

  setProperty('AzulHuesos.alpha', 0.8);
  setProperty('NaranjaHuesos.alpha', 0.8);
end

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "nar" then
  canDodge = true;
  doTweenColor('bar', 'bar', 'FF9900', 0.8, 'linear');
  setProperty('NaranjaAlarma.visible', true);
  luaSpritePlayAnimation('NaranjaAlarma', 'NaranjaAlarma');
  runTimer('Died', 0.6);
  playSound('notice', 2)
end
if value1 == "azu" then
  AZcanDodge = true;
  doTweenColor('bar', 'bar', '66FFFF', 0.8, 'linear');
  setProperty('AzulAlarma.visible', true);
  luaSpritePlayAnimation('AzulAlarma', 'AzulAlarma');
  runTimer('DiedAZ', 0.6);
  playSound('notice', 2)
  runTimer('bfyazul', 1);  
      end 
   end
end  

function onUpdate()
if canDodge == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   setProperty('NaranjaAlarma.visible', false);
   setProperty('NaranjaHuesos.visible', true);
   luaSpritePlayAnimation('NaranjaHuesos', 'NaranjaHuesos');
   setProperty('DodgeMechsBS-Shader.visible', true);
   luaSpritePlayAnimation('DodgeMechsBS-Shader', 'dodge');
   setProperty('boyfriend.visible', false);
   playSound('dodgesans', 2)
   Dodged = true;
   runTimer('bfya', 0.8);
   canDodge = false;
end   
if AZcanDodge == true and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
setProperty('health', getProperty('health') - 2)
   end 
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   elseif tag == 'Died' and Dodged == true then
   Dodged = false;
   elseif tag == 'bfya' then
    setProperty('NaranjaHuesos.visible', false);
    setProperty('boyfriend.visible', true);
    setProperty('DodgeMechsBS-Shader.visible', false);
  elseif tag == 'bfyazul' then
    setProperty('AzulHuesos.visible', true);
    setProperty('AzulAlarma.visible', false);
    setProperty('boyfriend.visible', true);
    AZcanDodge = false
    runTimer('ziu', 0.8);
    playSound('dodgesans', 2)
  elseif tag == 'ziu' then
    setProperty('AzulHuesos.visible', false);
   end  
end