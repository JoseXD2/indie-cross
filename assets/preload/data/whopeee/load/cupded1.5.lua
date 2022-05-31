local dead = false
local ElDed = {'zassets/cup/images/death/cuphead_death', 'zassets/cup/images/death/cuphead_death1.5', 'zassets/cup/images/death/cuphead_death1.6', 'zassets/cup/images/death/cuphead_death1.9'}
deadpoints = 0
deadpointsy = 0

function onCreate(id, direction, noteType, isSustainNote)
makeAnimatedLuaSprite('BF_Ghost', 'zassets/Ani/BF_Ghost', getProperty('boyfriend.x', 1000));
luaSpriteAddAnimationByPrefix('BF_Ghost', 'die', 'thrtr instance 1', 24, true);
addLuaSprite('BF_Ghost', true); 
setProperty('BF_Ghost.visible', false);

makeLuaSprite('negro', 'flash', 0, 0)
setProperty('negro.alpha', 0)
setObjectCamera('negro', 'other')
scaleObject('negro', 1.1, 1.1);
addLuaSprite('negro', false)
end 

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == '' then
deadpoints = deadpoints + 1
end
if noteType == '' and deadpointsy < 1.75 then
deadpointsy = deadpointsy + 0.19
end
if noteType == '' and deadpointsy > 1.75 then
deadpointsy = deadpointsy + 0.1
	end
end

function onnoteMiss(id, direction, noteType, isSustainNote)
if getProperty('health') < 0.10 and dead == false then ajajasemurio() end
if getProperty('health') < 0.10 and dead == true then
setProperty('health', 0.0001);	
end
end

function ajajasemurio()
setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - 100000) 
setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))	

local randomElDedInt = math.floor(getRandomInt(1,#ElDed))    
playSound('death', 3)
playSound('fuck you', 1)	

setProperty('BF_Ghost.visible', true);

luaSpritePlayAnimation('BF_Ghost', 'die');
luaSpritePlayAnimation('bfrun', 'run');

doTweenY('nosebro', 'BF_Ghost', -1000, 6, 'linear');  	

makeLuaSprite('cuphead_death', ElDed[randomElDedInt], 360, 80)
setProperty('cuphead_death.alpha', 0)
setObjectCamera('cuphead_death', 'other')
scaleObject('cuphead_death', 0.75, 0.75);
addLuaSprite('cuphead_death', false) 	

makeAnimatedLuaSprite('bfrun', 'zassets/Ani/NewCupheadrunAnim', 220+deadpoints, 225 - deadpointsy);
luaSpriteAddAnimationByPrefix('bfrun', 'run', 'Run_cycle_gif copy instance 1', 24, true);
scaleObject('bfrun', 0.4, 0.4);
setObjectCamera('bfrun', 'other')
addLuaSprite('bfrun', true); 
setProperty('bfrun.visible', false);

setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)

doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')	
doTweenAlpha('gay', 'negro', 0.75, 1, 'linear')	
doTweenAlpha('ojojojo', '1PortPorAsbelSen', 0, 0.01, 'linear')
doTweenAlpha('zetazetazeta', 'boyfriend', 0, 0.01, 'linear')

setProperty('inCutscene', true);
setProperty('boyfriend.stunned', true)

runTimer('die1', 1, 1);
runTimer('die2', 1.8, 1);

for i = 0, getProperty('notes.length')-1 do
if getPropertyFromGroup('notes', i, 'mustPress') == false then
			setPropertyFromGroup('notes', i, 'ignoreNote', true)
		end
	end
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
	setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0);
	setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
	end
end
	dead = true
end

function onTimerCompleted(tag)
if tag == 'die1' then 
doTweenAlpha('ekisekisde', 'cuphead_death', 1, 1, 'linear')	
doTweenAngle('XDD', 'cuphead_death', -9, 1, 'cubic');
doTweenAngle('XDxD', 'bfrun', -9, 0.000001, 'cubic');
end
if tag == 'die2' then 
setProperty('bfrun.visible', true);
end
end

function onUpdatePost()
if dead == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
loadSong('technicolor-tussle', 'technicolor-tussle', true);
end
end