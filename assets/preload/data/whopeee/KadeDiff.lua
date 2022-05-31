-- Creator: MasterDirector99
-- Link: https://github.com/ShadowMario/FNF-PsychEngine/discussions/2901
currentDifficulty = 'its still fucked';

function onCreate()
    makeLuaText('songText', songName .. ' - ' .. currentDifficulty .. " | Psych Engine v0.5.2h", 0, 2, 701);
    addLuaText('songText', true)
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    addLuaText('songText');
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