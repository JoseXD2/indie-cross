-- Creator: MasterDirector99
-- Link: https://github.com/ShadowMario/FNF-PsychEngine/discussions/2901
currentDifficulty = 'its still fucked';

function onCreate()
makeLuaSprite('interruptor1', '2PortPorAsbelSen', 0, 0);
scaleObject('interruptor1', 1, 1);
setObjectCamera('interruptor1', 'other');
addLuaSprite('interruptor1', false);

makeLuaText('songText', songName .. ' - ' .. currentDifficulty .. " | Psych Engine v0.5.2h", 0, 2, 701);
addLuaText('songText', true)
setTextAlignment('songText', 'left');
setTextSize('songText', 15);
setTextBorder('songText', 1, '000000');
addLuaText('songText');
end

function onUpdatePost(elapsed)
if getProperty('interruptor1.alpha') == 0.1 then
setTextFont('songText', "cumhead.otf"); 
end
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y') - 10);
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 10);
    currentDifficulty = getProperty('storyDifficultyText');
    setTextString('songText', songName .. ' - ' .. currentDifficulty .. " | Psych Engine v0.5.2h");

    if hideHud then
    removeLuaText('songText', true)
end
end

xdd = true

function goodNoteHit(id, direction, noteType, isSustainNote)
if xdd == true then 
    setProperty('health', getProperty('health')- 0.023);
    end
end