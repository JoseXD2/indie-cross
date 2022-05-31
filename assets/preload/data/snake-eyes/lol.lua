function onCreatePost()
addLuaScript('data/whopeee/load/cupded')	
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - Mike Geno - Snake Eyes [Hard]")
end

function onResume() 
setPropertyFromClass("openfl.Lib", "application.window.title", "Indie Cross - Mike Geno - Snake Eyes [Hard]")
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