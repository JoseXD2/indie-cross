local allowCountdown = false

function onStartCountdown()	
if not allowCountdown then
 return Function_Stop
end	if allowCountdown then
 return Function_Continue
end 
end

function onCreate()
if not seenCutscene and isStoryMode then
runTimer('adios2', 0.1)
end
if seenCutscene and isStoryMode then
runTimer('adios2', 0.1)	
end 
if not isStoryMode then
allowCountdown = true	
runTimer('adios2', 0.1)	
end
end


function onTimerCompleted(tag)
if tag == 'adios' then
doTweenAlpha('zzzzzzz', 'screen', 0, 1, 'linear');
runTimer('adios2', 3)
end
if tag == 'adios2' then
allowCountdown = true	
startCountdown()
   end 
end