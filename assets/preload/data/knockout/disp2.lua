local Carga = 0
local Atacable = false
local Atacado = false
local aguacatenopalta = false

function onCreate()
    makeAnimatedLuaSprite('GreenShit', 'zassets/cup/images/bull/GreenShit', 750, 440);
    addAnimationByPrefix('GreenShit', 'GreenShit', 'GreenShit', 28, false);  
    addLuaSprite('GreenShit', true);
    setProperty('GreenShit.visible', false);

    makeAnimatedLuaSprite('GreenShit2', 'zassets/cup/images/bull/GreenShit', 670, 420);
    addAnimationByPrefix('GreenShit2', 'GreenShit', 'GreenShit02 instance ', 28, false);  
    addLuaSprite('GreenShit2', true);
    setProperty('GreenShit2.visible', false);

    makeAnimatedLuaSprite('GreenShit3', 'zassets/cup/images/bull/GreenShit', 800, 460);
    addAnimationByPrefix('GreenShit3', 'GreenShit', 'Greenshit03 instance ', 28, false);  
    addLuaSprite('GreenShit3', true);
    setProperty('GreenShit3.visible', false);
    doTweenAlpha('ELPEPE', 'GreenShit', 0.95, 2, 'linear');
    doTweenAlpha('ELPEPE2', 'GreenShit2', 0.95, 2, 'linear');
    doTweenAlpha('ELPEPE3', 'GreenShit3', 0.95, 2, 'linear');
end

function onEvent(name, value1, value2)
if name == "Parry" then
if value1 == 'verde' then
setProperty('GreenShit.visible', true);
setProperty('GreenShit2.visible', true);
setProperty('GreenShit3.visible', true);
aguacatenopalta = true
runTimer('hpdraino', 0.35, 0);
Atacable = true
runTimer('ani', 0.43, 0);
runTimer('ani2', 0.63, 0);
runTimer('ani3', 0.83, 0); 
  end
if value1 == 'verdeno' then
setProperty('GreenShit.visible', false);
setProperty('GreenShit2.visible', false);
setProperty('GreenShit3.visible', false);
cancelTimer('hpdraino');
aguacatenopalta = false
cancelTimer('ani');
cancelTimer('ani2');
cancelTimer('ani3');
Atacable = false
  end end
end

function onUpdate()
if keyJustPressed('space') and Carga == 2 and Atacable == true then
   characterPlayAnim('boyfriend', 'attack', true);
   characterPlayAnim('dad', 'Bloqueo', true);
   playSound('hurthead', 2)
   runTimer('well well welle', 0.3);
   cancelTimer('hpdraino'); 
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'well well welle'  then
setProperty('GreenShit.visible', false);
setProperty('GreenShit2.visible', false);
setProperty('GreenShit3.visible', false);
Carga = 0
Atacable = false
end 
if tag == 'Cancelhpdraino' then
    cancelTimer('hpdraino');
end
if tag == 'ani' then
objectPlayAnimation('GreenShit', 'GreenShit', true)
end
if tag == 'ani2' then
objectPlayAnimation('GreenShit2', 'GreenShit', true)
end
if tag == 'ani3' then
objectPlayAnimation('GreenShit3', 'GreenShit', true)
end
if tag == 'hpdraino' then
    setProperty('health', getProperty('health') -0.034);
   end  
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
  if noteType == '' and aguacatenopalta == true then
playSound('chaser0', 1) 
  end
end 