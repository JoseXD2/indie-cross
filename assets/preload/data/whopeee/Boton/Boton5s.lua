local ghost = true

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
    addAnimationByPrefix('Boton2', 'DClick', 'Dodgeclick', 24, true);  
    addAnimationByPrefix('Boton2', 'DIdle', 'IDodge', 0.00001, true); 
    objectPlayAnimation('Boton2', 'DIdle', true)
    scaleObject('Boton2', 0.55, 0.55); 
    setObjectCamera('Boton2', 'hud');
    addLuaSprite('Boton2', true);
    
end

function onUpdate()
if getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and ghost == true then
   objectPlayAnimation('Boton', 'AClick', true)
   objectPlayAnimation('key_shift', 'press', true);
   runTimer('coldA', 0.1);
end
end

function onUpdatePost()
if getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() then
   objectPlayAnimation('key_space', 'press', true);
   objectPlayAnimation('Boton2', 'DClick', true)
   setProperty('Boton2.y', 326)
   setProperty('Boton2.x', 26)
   runTimer('stopD', 0.3);
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'stopA'  then
objectPlayAnimation('key_shift', 'idle', true); 
objectPlayAnimation('Boton', 'AIdle', true)
setProperty('Boton.y', 240)
ghost = true
end 
if tag == 'stopD' then
objectPlayAnimation('key_space', 'idle', true);  
objectPlayAnimation('Boton2', 'DIdle', false)
setProperty('Boton2.y', 320)
setProperty('Boton2.x', 20)
end
if tag == 'coldA' then
objectPlayAnimation('key_shift', 'idle', true);
objectPlayAnimation('Boton', 'ACarga', false)
setProperty('Boton.y', 220)
ghost = false
runTimer('stopA', 6)
end 
end