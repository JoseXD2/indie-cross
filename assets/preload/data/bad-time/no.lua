function onCreatePost()
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - Tenzubushi - Bad Time [Hard]")
end

function onResume() 
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - Tenzubushi - Bad Time [Hard]")
end

function onEndSong()
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
end

function onPause()
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
end

function onGameOver()
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
end

function onUpdate()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
loadSong('jss', 'jss', true);
   end
end