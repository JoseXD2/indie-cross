function onCreate()
setPropertyFromClass('GameOverSubstate', 'characterName', '0dedsoul'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'deds/utDie');
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'GameOverSansEnd'); 
end

function onGameOver()
playSound('GameOverSans', 3)
end