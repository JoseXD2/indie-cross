function onCreate()

    addLuaScript('data/whopeee/fonheadt') 
    addLuaScript('data/whopeee/Healtbarcuphead2')
    addLuaScript('data/whopeee/kadebarcuphead2')
    addLuaScript('data/whopeee/load/cuphead2')
    addLuaScript('data/whopeee/Boton/botonAD')
    addLuaScript('data/whopeee/ratings/ratingshead')
    addLuaScript('data/whopeee/camara')
    addLuaScript('images/ut/port/flechascup') 
    addLuaScript('data/whopeee/Ani')
    
    makeAnimatedLuaSprite('knock', 'zassets/cup/images/knock', 20, 150);
    addAnimationByPrefix('knock', 'knock', 'knock', 24, true);  
    objectPlayAnimation('knock', 'knock', true)
    setObjectCamera('knock', 'hud');
    addLuaSprite('knock', true);
    setProperty('knock.visible', false);

    setProperty('cameraSpeed', 0.75)

precacheImage('zassets/cup/images/bull/CupheadHadoken');
precacheImage('zassets/cup/images/Explo');
precacheImage('zassets/cup/images/ready_wallop');

	makeLuaSprite('CH-RN-00', 'zassets/cup/images/CH-RN-00', -1000, -800);
	setLuaSpriteScrollFactor('CH-RN-00', 0.2, 0.2);
	scaleObject('CH-RN-00', 4, 4);
	addLuaSprite('CH-RN-00', false);

	makeLuaSprite('CH-RN-01', 'zassets/cup/images/CH-RN-01', -700, -800);
	setLuaSpriteScrollFactor('CH-RN-01', 0.5, 0.5);
	scaleObject('CH-RN-01', 4, 4);
	addLuaSprite('CH-RN-01', false);

	makeLuaSprite('CH-RN-02', 'zassets/cup/images/CH-RN-02', -1000, -1000);
	scaleObject('CH-RN-02', 4, 4.15);
	addLuaSprite('CH-RN-02', false);

    makeAnimatedLuaSprite('NewRAINLayer01', 'zassets/cup/images/NewRAINLayer01', 0, 0);
    addAnimationByPrefix('NewRAINLayer01', 'NewRAINLayer01', 'NewRAINLayer', 35, true);  
    objectPlayAnimation('NewRAINLayer01', 'NewRAINLayer01', true)
    setLuaSpriteScrollFactor('NewRAINLayer01', 0.1, 0.1);
    setObjectCamera('NewRAINLayer01', 'other');
    scaleObject('NewRAINLayer01', 0.7, 0.7);
    addLuaSprite('NewRAINLayer01', true);

    makeAnimatedLuaSprite('Mugman Fucking dies', 'zassets/cup/images/Mugman Fucking dies', 1400, 490);
    addAnimationByPrefix('Mugman Fucking dies', 'when', 'when', 24, true);
    addAnimationByPrefix('Mugman Fucking dies', 'lobalacearon', 'tematan', 24, true);
    addAnimationByPrefix('Mugman Fucking dies', 'walk', 'caminandochill', 30, true);  
    addAnimationByPrefix('Mugman Fucking dies', 'que', 'que', 24, true);  
    objectPlayAnimation('Mugman Fucking dies', 'walk', true)
    scaleObject('Mugman Fucking dies', 1, 1);
    addLuaSprite('Mugman Fucking dies', true);
    setProperty('Mugman Fucking dies.visible', false);

    setProperty("defaultCamZoom", 0.55) 
end

function onEvent(name, value1, value2)
if name == "Parry" then
if value1 == 'siu' then
setProperty('knock.visible', true);
objectPlayAnimation('knock', 'knock', true)
playSound('knockout', 2)
end
if value1 == 'shit' then
removeLuaSprite('CupheadHadoken')
makeAnimatedLuaSprite('Explo', 'zassets/cup/images/Explo', 1100, 50);
addAnimationByPrefix('Explo', 'Explo', 'Explo', 24, true);
objectPlayAnimation('Explo', 'Explo', true)
scaleObject('Explo', 1, 1);
addLuaSprite('Explo', true);
playSound('shoothead', 2)
end    
if value1 == 'walk' then
setProperty('Mugman Fucking dies.visible', true);
objectPlayAnimation('Mugman Fucking dies', 'walk', true)
end
if value1 == 'que' then
objectPlayAnimation('Mugman Fucking dies', 'que', true)
end
if value1 == 'when' then
objectPlayAnimation('Mugman Fucking dies', 'when', true)
end
if value1 == 'te' then
objectPlayAnimation('Mugman Fucking dies', 'lobalacearon', true)
end
if value1 == 'tas' then
setProperty('Explo.visible', false);
end
if value1 == 'cpapu' then
doTweenAlpha('lsfjkldsfkldsf', 'knock', 0, 1.5, 'linear');
     end
  end 
end