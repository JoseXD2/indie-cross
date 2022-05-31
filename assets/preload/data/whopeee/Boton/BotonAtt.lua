function onCreate()
  
    makeAnimatedLuaSprite('Boton', 'brolaverdadesqueestamierdamecuestaynadieentiendelomuchoquellevanlosportsynoparandepedirypedirsintomarencuentamissentimientos', 20, 240);
    addAnimationByPrefix('Boton', 'AClick', 'Attack Click', 24, false);  
    addAnimationByPrefix('Boton', 'AIdle', 'IAttack', 0.00001, true);  
    addAnimationByPrefix('Boton', 'ACarga', 'AttackNA', 24, false);  
    objectPlayAnimation('Boton', 'AIdle', true)
    scaleObject('Boton', 0.55, 0.55);
    setObjectCamera('Boton', 'hud');
    addLuaSprite('Boton', true);

    doTweenAlpha('XDD', 'Boton', 0.75, 0.001, 'linear');
end

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() then
   objectPlayAnimation('Boton', 'AClick', true)
   objectPlayAnimation('key_shift', 'press', true); 
   runTimer('stopA', 0.3);
  setProperty('Boton.y', 247)
  setProperty('Boton.x', 26)
end
end

function onUpdatePost()
if keyJustPressed('space') then
   objectPlayAnimation('Boton2', 'DClick', true)
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
setProperty('Boton2.y', 320)
setProperty('Boton2.x', 20)
end
end