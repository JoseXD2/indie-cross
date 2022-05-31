function onCreate()
    makeAnimatedLuaSprite('key_shift', 'MobileGame', 50, 488);
    addAnimationByPrefix('key_shift', 'idle', 'Attack Avaiable instance ', 24, true);
    addAnimationByPrefix('key_shift', 'press', 'Attack Click instance ', 24, true);
    addLuaSprite('key_shift', true);
    setObjectCamera('key_shift', 'hud')
    objectPlayAnimation('key_shift', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_shift', 0.9, 0.9);

    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);

    setProperty('key_shift.visible', false)
    setProperty('key_space.visible', true)
end

--getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and Carga == 2 and mouseReleased()--
--and getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased()--
