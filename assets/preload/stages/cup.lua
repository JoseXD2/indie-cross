function onCreate()
	addLuaScript('data/whopeee/fonheadt') 
    addLuaScript('data/whopeee/Healtbarcuphead')
    addLuaScript('data/whopeee/kadebarcuphead1')
    addLuaScript('data/whopeee/load/cuphead1')
    addLuaScript('images/ut/port/flechascup')
    addLuaScript('data/whopeee/camara')
    addLuaScript('data/whopeee/ratings/ratingshead')
    doTweenAlpha('interruptor1c', 'interruptor1', 0.1, 0.1, 'quadInOut');	
	makeLuaSprite('BG-00', 'zassets/cup/images/BG-00', -1000, -800);
	setLuaSpriteScrollFactor('BG-00', 0.2, 0.2);
	scaleObject('BG-00', 4, 4);
	addLuaSprite('BG-00', false);

    setProperty('cameraSpeed', 0.5)

	makeLuaSprite('BG-01', 'zassets/cup/images/BG-01', -700, -800);
	setLuaSpriteScrollFactor('BG-01', 0.5, 0.5);
	scaleObject('BG-01', 4, 4);
	addLuaSprite('BG-01', false);

	makeLuaSprite('Foreground', 'zassets/cup/images/Foreground', -1000, -1000);
	scaleObject('Foreground', 4, 4.1);
	addLuaSprite('Foreground', false);

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

    setProperty("defaultCamZoom", 0.55) 
end