function onCreate()
    
  addLuaScript('data/whopeee/Healtbarbendy')
  addLuaScript('data/whopeee/DrenadoSen') 
  addLuaScript('data/whopeee/camara')
  addLuaScript('data/whopeee/kadebarbendy')
  addLuaScript('images/ut/port/flechasbendy')
  addLuaScript('data/whopeee/fontbendy') 
  addLuaScript('data/whopeee/ratings/ratingsbendy')

   makeLuaSprite('BACKBACKgROUND', 'zassets/bendy/images/BACKBACKgROUND', -500, -250);
    setLuaSpriteScrollFactor('BACKBACKgROUND', 0.9, 0.9);
    scaleObject('BACKBACKgROUND', 4.4, 4.4);
    addLuaSprite('BACKBACKgROUND', false);
    
    makeLuaSprite('BackgroundwhereDEEZNUTSfitINYOmOUTH', 'zassets/bendy/images/BackgroundwhereDEEZNUTSfitINYOmOUTH', -1000, -700);
    setLuaSpriteScrollFactor('BackgroundwhereDEEZNUTSfitINYOmOUTH', 0.9, 0.9);
    scaleObject('BackgroundwhereDEEZNUTSfitINYOmOUTH', 4, 4);
    addLuaSprite('BackgroundwhereDEEZNUTSfitINYOmOUTH', false);

 makeAnimatedLuaSprite('SammyBg', 'zassets/bendy/images/SammyBg', 400, 100);
 addAnimationByPrefix('SammyBg', 'SammyBg', 'SammyBg', 24, true);  
 objectPlayAnimation('SammyBg', 'SammyBg', true)
 scaleObject('SammyBg', 1.1, 1.1);
 addLuaSprite('SammyBg', false);

    makeLuaSprite('MidGrounUTS', 'zassets/bendy/images/MidGrounUTS', -1000, -950);
    scaleObject('MidGrounUTS', 4.4, 4.8);
    addLuaSprite('MidGrounUTS', false);
    
    makeLuaSprite('ForegroundEEZNUTS', 'zassets/bendy/images/ForegroundEEZNUTS', 1600, -450);
    scaleObject('ForegroundEEZNUTS', 4, 4.8);
    addLuaSprite('ForegroundEEZNUTS', true);
    setProperty('cameraSpeed', 0.8)

    makeLuaSprite('jejejboy', 'zassets/bendy/images/jejejboy', 1500, -450);
    setLuaSpriteScrollFactor('jejejboy', 1.5, 1.5);
    scaleObject('jejejboy', 1, 1);
    addLuaSprite('jejejboy', true);
end

function onUpdate()
if getProperty('jejejboy.alpha') == 1 then
    doTweenAlpha('jejejboyTUIN', 'jejejboy', 0, 2, 'quadInOut');
    doTweenColor('dad', 'dad', '87482B', 2, 'linear');
    doTweenColor('BackgroundwhereDEEZNUTSfitINYOmOUTH', 'BackgroundwhereDEEZNUTSfitINYOmOUTH', '87482B', 2, 'linear');
    doTweenColor('BACKBACKgROUND', 'BACKBACKgROUND', '87482B', 2, 'linear');
    doTweenColor('SammyBg', 'SammyBg', '87482B', 2, 'linear');
    doTweenColor('MidGrounUTS', 'MidGrounUTS', '87482B', 2, 'linear');
    doTweenColor('ForegroundEEZNUTS', 'ForegroundEEZNUTS', '87482B', 2, 'linear');
    doTweenColor('boyfriend', 'boyfriend', '87482B', 2, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'jejejboyTUIN' then
    doTweenAlpha('jejejboyTUINparte2', 'jejejboy', 1, 2, 'quadInOut');
    doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 2, 'linear');
    doTweenColor('dad', 'dad', 'FFFFFF', 2, 'linear');
    doTweenColor('BackgroundwhereDEEZNUTSfitINYOmOUTH', 'BackgroundwhereDEEZNUTSfitINYOmOUTH', 'FFFFFF', 2, 'linear');
    doTweenColor('BACKBACKgROUND', 'BACKBACKgROUND', 'FFFFFF', 2, 'linear');
    doTweenColor('SammyBg', 'SammyBg', 'FFFFFF', 2, 'linear');
    doTweenColor('MidGrounUTS', 'MidGrounUTS', 'FFFFFF', 2, 'linear');
    doTweenColor('ForegroundEEZNUTS', 'ForegroundEEZNUTS', 'FFFFFF', 2, 'linear');
    end
end