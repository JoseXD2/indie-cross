function onCreate()

    makeAnimatedLuaSprite('Boton2', 'brolaverdadesqueestamierdamecuestaynadieentiendelomuchoquellevanlosportsynoparandepedirypedirsintomarencuentamissentimientos', 20, 320);
    addAnimationByPrefix('Boton2', 'DClick', 'Dodgeclick', 24, false);  
    addAnimationByPrefix('Boton2', 'DIdle', 'IDodge', 0.00001, true); 
    objectPlayAnimation('Boton2', 'DIdle', true)
    scaleObject('Boton2', 0.55, 0.55); 
    setObjectCamera('Boton2', 'hud');
    addLuaSprite('Boton2', true);
    
    doTweenAlpha('XDD2', 'Boton2', 0.75, 0.001, 'linear');
end

function onUpdate()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
   objectPlayAnimation('Boton', 'AClick', true)
   runTimer('stopA', 0.3);
  setProperty('Boton.y', 247)
  setProperty('Boton.x', 26)
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