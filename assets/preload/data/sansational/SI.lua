local Atacable = false;
local Atacado = false;
local PuedeAtacar = false
local snas = false 

function onUpdate()
if PuedeAtacar == true and getMouseX('hud') > getProperty('key_shift.x') and getMouseY('hud') > getProperty('key_shift.y') and getMouseX('hud') < getProperty('key_shift.x') + getProperty('key_shift.width') and getMouseY('hud') < getProperty('key_shift.y') + getProperty('key_shift.height') and mouseReleased() and not snas == true then
   PuedeAtacar = false
   playSound('dodgesans', 2)
   setProperty('DodgeMechs.visible', false);
   setProperty('bfs1a.visible', true);
   setProperty('boyfriend.visible', false);
   setProperty('SansDodge.visible', true);
   setProperty('dad.visible', false);
   luaSpritePlayAnimation('SansDodge', 'Dodges');
   luaSpritePlayAnimation('bfs1a', 'ataque');
   Atacado = true;
   runTimer('dos', 1.1);
   runTimer('des', 1);
   runTimer('dex', 5, 1); 
end     

for i = 0, getProperty('unspawnNotes.length')-1 do
    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SansationalB' and Atacado == true then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'BBONE_assets'); --Change texture
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'des' then
   setProperty('bfs1a.visible', false);
   setProperty('boyfriend.visible', true);
end   
if tag == 'dex' then
   PuedeAtacar = true
end
  if tag == 'dos' then
   setProperty('SansDodge.visible', false);
   setProperty('dad.visible', true);
   end
end  

function onCreate()
  makeAnimatedLuaSprite('SansDodge', 'zassets/Ani/SansDodge', 100, 250);
  luaSpriteAddAnimationByPrefix('SansDodge', 'Dodges', 'SansDodge instance ', 24, false);
  luaSpritePlayAnimation('SansDodge', 'Dodges');
  addLuaSprite('SansDodge', true); 
  setProperty('SansDodge.visible', false);

  makeAnimatedLuaSprite('bfs1a', 'zassets/Ani/bfs1a', -10, 450);
  luaSpriteAddAnimationByPrefix('bfs1a', 'ataque', '0BF attack instance ', 24, false);
  luaSpritePlayAnimation('bfs1a', 'Dodges');
  addLuaSprite('bfs1a', false); 
  setProperty('bfs1a.visible', false);

  makeLuaSprite('flash', 'flash', 0, 0);
  setLuaSpriteScrollFactor('flash', 0, 0);
  setProperty('flash.alpha', 0.0001);
  addLuaSprite('flash', true);
  setObjectCamera('flash', 'hud'); 
end

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'fase2' and Atacado == true then
setProperty('hall.visible', false);
setProperty("defaultCamZoom", 0.5) 
triggerEvent('Change Character', 'dad', '1sansUT');
triggerEvent('Change Character', 'bf', '2bfUT'); 
snas = true
removeLuaSprite('Boton')
removeLuaSprite('Boton2')
end 
if value1 == 'fase2g' and not Atacado == true then
snas = true
removeLuaSprite('Boton')
removeLuaSprite('Boton2')
end 
if value1 == "XDD" then    
PuedeAtacar = true;   
end
end 
if name == "Flan" and Atacado == true then
    setProperty('flash.alpha', 1);
    playSound('notice', 1);
    doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1, 'linear');
    setObjectCamera('flash', 'hud');
   end 
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
  if noteType == 'Sansationalt' and Atacado == false then
    local animToPlay = '';
    if noteData == 0 then
      animToPlay = 'singLEFT-alt';
    elseif noteData == 1 then
      animToPlay = 'singDOWN-alt';
    elseif noteData == 2 then
      animToPlay = 'singUP-alt';
    elseif noteData == 3 then
      animToPlay = 'singRIGHT-alt';
    end
    characterPlayAnim('dad', animToPlay, true);
    setProperty('dad.specialAnim', true);
  end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
  if noteType == 'SansationalB' and Atacado == true  then
    setProperty('health', -500);
    end
end 

function noteMiss(id, noteData, noteType, isSustainNote)
  if noteType == 'SansationalO' and Atacado == true then
    setProperty('health', -500);
  end
end

function onUpdatePost()
  for i = 0, getProperty('unspawnNotes.length')-1 do
    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SansationalO' and Atacado == true then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'OBONE_assets'); --Change texture
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            end
        end
    end
end


function onEndSong()
if Atacado == true and isStoryMode then
loadSong('burning-in-hell', 'burning-in-hell', true);
end
if Atacado == false and isStoryMode then
loadSong('final-stretch', 'final-stretch', true);    
  end 
end