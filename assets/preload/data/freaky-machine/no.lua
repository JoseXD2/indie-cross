local fps = 30	

function onCreatePost()
fps = getPropertyFromClass('flixel.FlxG','updateFramerate')	
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - DaGames & Saster - Freaky Machine [Hard]")
end

function onResume() 
fps = 30	
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - DaGames & Saster - Freaky Machine [Hard]")
setPropertyFromClass('ClientPrefs', 'framerate', 30)
end

function onEndSong()
fps = 60	
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end

function onPause()
fps = 60
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end

function onGameOver()
fps = 60
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end