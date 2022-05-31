function onCreate()
  
    makeAnimatedLuaSprite('Boton', 'brolaverdadesqueestamierdamecuestaynadieentiendelomuchoquellevanlosportsynoparandepedirypedirsintomarencuentamissentimientos', 20, 240);
    addAnimationByPrefix('Boton', 'AClick', 'Attack Click', 24, false);  
    addAnimationByPrefix('Boton', 'AIdle', 'IAttack', 0.00001, true);  
    addAnimationByPrefix('Boton', 'ACarga', 'AttackNA', 24, false);  
    objectPlayAnimation('Boton', 'AIdle', true)
    scaleObject('Boton', 0.55, 0.55);
    setObjectCamera('Boton', 'hud');
    addLuaSprite('Boton', true);

    makeAnimatedLuaSprite('Boton2', 'brolaverdadesqueestamierdamecuestaynadieentiendelomuchoquellevanlosportsynoparandepedirypedirsintomarencuentamissentimientos', 20, 320);
    addAnimationByPrefix('Boton2', 'DClick', 'Dodgeclick', 24, false);  
    addAnimationByPrefix('Boton2', 'DIdle', 'IDodge', 0.00001, true); 
    objectPlayAnimation('Boton2', 'DIdle', true)
    scaleObject('Boton2', 0.55, 0.55); 
    setObjectCamera('Boton2', 'hud');
    addLuaSprite('Boton2', true);

    doTweenAlpha('XDD', 'Boton', 0, 0.001, 'linear');
    doTweenAlpha('XDD2', 'Boton2', 0, 0.001, 'linear');
    doTweenAlpha('key_space', 'key_space', 0, 0.001, 'linear');
    doTweenAlpha('key_shift', 'key_shift', 0, 0.001, 'linear');
end

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.CONTROL') then
   objectPlayAnimation('Boton', 'AClick', true)
   objectPlayAnimation('key_shift', 'press', true); 
   runTimer('stopA', 0.3);
  setProperty('Boton.y', 247)
  setProperty('Boton.x', 26)
end
end

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "vis" then
doTweenAlpha('XDD', 'Boton', 1, 1, 'linear');
doTweenAlpha('XDD2', 'Boton2', 1, 1, 'linear');
doTweenAlpha('key_space', 'key_space', 1, 1, 'linear');
doTweenAlpha('key_shift', 'key_shift', 1, 1, 'linear');
end 
if value1 == "ivis" then
doTweenAlpha('XDD', 'Boton', 0, 1, 'linear');
doTweenAlpha('XDD2', 'Boton2', 0, 1, 'linear');
doTweenAlpha('key_space', 'key_space', 0, 1, 'linear');
doTweenAlpha('key_shift', 'key_shift', 0, 1, 'linear');
end
end
end

function onUpdatePost()
if getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   objectPlayAnimation('Boton2', 'DClick', true)
   objectPlayAnimation('key_space', 'press', true);
   setProperty('Boton2.y', 326)
   setProperty('Boton2.x', 26)
   runTimer('stopD', 0.3);
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'stopA'  then
objectPlayAnimation('Boton', 'AIdle', true)
objectPlayAnimation('key_shift', 'idle', true); 
setProperty('Boton.y', 240)
setProperty('Boton.x', 20)
end 
if tag == 'stopD' then
objectPlayAnimation('Boton2', 'DIdle', false)
objectPlayAnimation('key_space', 'idle', true); 
setProperty('Boton2.y', 320)
setProperty('Boton2.x', 20)
end
end